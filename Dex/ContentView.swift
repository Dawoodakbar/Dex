 //
//  ContentView.swift
//  Dex
//
//  Created by Dawood Akbar on 29/09/2025.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest<Pokemon>( sortDescriptors: [SortDescriptor(\.id)],
        animation: .default
    ) private var pokedex: FetchedResults
    
    @State private var searchText = ""
    @State private var filterByFavorites = false
    private var dynamicPredicate: NSPredicate {
        var predicates: [NSPredicate] = []
        
        // Search predicate
        if !searchText.isEmpty {
            predicates.append(NSPredicate(format: "name contains[c] %@", searchText))
        }
        
        // Filter by favorite predicate
        if filterByFavorites {
            predicates.append(NSPredicate(format: "favorite == %d", true))
        }
        
        // Comobine predicates
        return NSCompoundPredicate(andPredicateWithSubpredicates: predicates)
    }
   
    
    let fetcher = FetchService()

    var body: some View {
        NavigationStack {
            List {
                ForEach(pokedex) { pokemon in
                    NavigationLink(value: pokemon) {
                        AsyncImage(url: pokemon.sprite) { image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 100, height: 100)
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Text(pokemon.name!.capitalized)
                                    .fontWeight(.bold)
                                
                                if pokemon.favorite {
                                    Image(systemName: "star.fill")
                                        .foregroundStyle(.yellow)
                                }
                            }
                            
                            HStack {
                             ForEach(pokemon.types!, id: \.self) { type in // use types on type
                                    Text(type.capitalized)
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 13)
                                        .padding(.vertical, 5)
                                        .background(Color(type.capitalized))
                                        .clipShape(.capsule)
                                }
                            }
                        }
                    }
                }
                
            }
            .navigationTitle("PokeDex")
            .searchable(text: $searchText, prompt: "Find a Pokemon")
            .autocorrectionDisabled()
            .onChange(of: filterByFavorites, { oldValue, newValue in
                pokedex.nsPredicate = dynamicPredicate
            })
            .onChange(of: searchText, { oldValue, newValue in
                pokedex.nsPredicate = dynamicPredicate
            })
            .navigationDestination(for: Pokemon.self) { pokemon in
                Text(pokemon.name ?? "No Name!")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        filterByFavorites.toggle()
                    } label: {
                        Label("Filter By Favorites", systemImage: filterByFavorites ? "star.fill": "star")
                    }
                }
                ToolbarItem {
                    Button("Add Item", systemImage: "plus") {
                        getPokemon()
                    }
                }
            }
        }
    }
    
    
    private func getPokemon() {
        Task {
            for id in 1..<152 {
                do {
                    let fetchedPokemon = try await
                    fetcher.fetchPokemon(id)
                    
                    let pokemon = Pokemon(context: viewContext)
                    pokemon.id = fetchedPokemon.id
                    pokemon.name = fetchedPokemon.name
                    pokemon.types = fetchedPokemon.types
                    pokemon.hp = fetchedPokemon.hp
                    pokemon.attack = fetchedPokemon.attack
                    pokemon.defense = fetchedPokemon.defense
                    pokemon.specialAttack = fetchedPokemon.specialAttack
                    pokemon.specialDefense = fetchedPokemon.specialDefense
                    pokemon.speed = fetchedPokemon.speed
                    pokemon.sprite = fetchedPokemon.sprite
                    pokemon.shiny = fetchedPokemon.shiny
                    
                    
                    
                    try viewContext.save()
                } catch {
                    print(error)
                }
            }
        }
    }
}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
