# 🎮 Dex - Pokemon Encyclopedia

A beautiful iOS app that serves as your personal Pokemon encyclopedia, featuring the original 151 Pokemon from the Kanto region. Built with SwiftUI and Core Data, Dex provides an immersive experience for Pokemon fans to browse, search, and manage their favorite Pokemon collection.

## ✨ Features

### 🐾 Core Functionality
- **Complete Pokedex**: Browse all 151 original Pokemon from the Kanto region
- **Detailed Pokemon Information**: View comprehensive stats, types, and sprites for each Pokemon
- **Shiny Pokemon Support**: Toggle between normal and shiny versions of Pokemon sprites
- **Favorites System**: Mark your favorite Pokemon and filter by favorites
- **Smart Search**: Find Pokemon by name with real-time search functionality
- **Offline Support**: All Pokemon data is stored locally using Core Data

### 🎨 Visual Features
- **Dynamic Backgrounds**: Type-specific background images for each Pokemon
- **Color-coded Types**: Each Pokemon type has its own distinct color scheme
- **Smooth Animations**: Fluid transitions and interactions throughout the app
- **Modern UI**: Clean, intuitive interface following iOS design guidelines

### 📱 Widget Support
- **Home Screen Widget**: Display random Pokemon on your home screen
- **Multiple Sizes**: Support for small, medium, and large widget sizes
- **Auto-refresh**: Widget updates every 25 seconds with new random Pokemon

## 🛠 Technical Details

### Architecture
- **SwiftUI**: Modern declarative UI framework
- **Core Data**: Local data persistence and management
- **MVVM Pattern**: Clean separation of concerns
- **Async/Await**: Modern concurrency for network requests

### Data Source
- **Pokemon API**: Fetches data from [PokéAPI](https://pokeapi.co/)
- **Local Storage**: Sprites and data cached locally for offline access
- **Real-time Fetching**: On-demand Pokemon data retrieval

### Key Components
- `ContentView`: Main Pokemon list with search and filtering
- `PokemonDetail`: Detailed Pokemon view with stats and shiny toggle
- `FetchService`: Handles API communication and data parsing
- `DexWidget`: Home screen widget for random Pokemon display

## 📸 Screenshots

<img width="540" height="1028" alt="Screenshot 2025-10-13 at 11 36 59 AM" src="https://github.com/user-attachments/assets/82d82f27-cbc4-4727-a990-bc3c9e64c856" />
<img width="540" height="1028" alt="Screenshot 2025-10-13 at 11 36 45 AM" src="https://github.com/user-attachments/assets/d9e92a21-96ea-41a6-af8d-628164da625a" />
<img width="540" height="1028" alt="Screenshot 2025-10-13 at 11 36 11 AM" src="https://github.com/user-attachments/assets/a64488e7-b035-4160-b386-867f62ec258b" />
<img width="540" height="1028" alt="Screenshot 2025-10-13 at 11 36 06 AM" src="https://github.com/user-attachments/assets/ec14b0fd-e064-42fc-a357-f59875d96d20" />
<img width="540" height="1028" alt="Screenshot 2025-10-13 at 11 36 01 AM" src="https://github.com/user-attachments/assets/fd724251-b112-4821-a237-452c3a2c9995" />
<img width="540" height="1028" alt="Screenshot 2025-10-13 at 11 35 50 AM" src="https://github.com/user-attachments/assets/ada620f6-1381-47f6-b0fb-16d8d118d1fa" />
<img width="540" height="1028" alt="Screenshot 2025-10-13 at 11 35 29 AM" src="https://github.com/user-attachments/assets/fd40e5aa-5af1-484b-bcb4-2b50324f8e1c" />
<img width="540" height="1028" alt="Screenshot 2025-10-13 at 11 35 24 AM" src="https://github.com/user-attachments/assets/cf0b171e-3fba-4b56-aefd-ebd554509162" />
<img width="540" height="1028" alt="Screenshot 2025-10-13 at 11 35 19 AM" src="https://github.com/user-attachments/assets/c3142fe9-89dc-41f9-a905-ba03519a3a76" />
<img width="540" height="1028" alt="Screenshot 2025-10-13 at 11 34 23 AM" src="https://github.com/user-attachments/assets/09c0db73-1f13-400a-80ee-befa946c2180" />


https://github.com/user-attachments/assets/42d39b82-02b4-4dee-970a-43b6748a3947


## 🚀 Getting Started

### Prerequisites
- iOS 16.0 or later
- Xcode 15.0 or later
- Swift 5.9 or later

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/dex.git
   ```

2. Open the project in Xcode:
   ```bash
   cd dex
   open Dex.xcodeproj
   ```

3. Build and run the project in Xcode

### First Launch
1. Launch the app
2. Tap "Fetch Pokemon" to download the first 151 Pokemon
3. Wait for the initial data fetch to complete
4. Start exploring your Pokemon collection!

## 🎯 Usage

### Browsing Pokemon
- Scroll through the main list to see all Pokemon
- Tap on any Pokemon to view detailed information
- Use the search bar to find specific Pokemon by name

### Managing Favorites
- Swipe left on any Pokemon in the list to add/remove from favorites
- Tap the star button in the top-right corner to filter by favorites only
- Favorites are marked with a yellow star icon

### Pokemon Details
- View detailed stats including HP, Attack, Defense, Special Attack, Special Defense, and Speed
- Tap the wand icon to toggle between normal and shiny sprites
- Tap the star button to add/remove from favorites

### Widget Setup
1. Long press on your home screen
2. Tap the "+" button to add widgets
3. Search for "Dex" or "Pokemon"
4. Select your preferred widget size
5. Add to home screen

## 🏗 Project Structure

```
Dex/
├── Dex/                    # Main app target
│   ├── DexApp.swift       # App entry point
│   ├── ContentView.swift  # Main Pokemon list view
│   ├── PokemonDetail.swift # Pokemon detail view
│   ├── FetchService.swift # API service
│   ├── FetchedPokemon.swift # API data model
│   ├── PokemonExt.swift   # Pokemon extensions
│   ├── Stats.swift        # Stats view component
│   ├── Persistence.swift  # Core Data setup
│   └── Assets.xcassets/   # Images and colors
├── DexWidget/             # Widget extension
│   ├── DexWidget.swift    # Widget implementation
│   └── DexWidgetBundle.swift
└── Dex.xcodeproj/         # Xcode project
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

### Development Guidelines
- Follow Swift naming conventions
- Maintain clean, readable code
- Add comments for complex logic
- Test on multiple device sizes

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [PokéAPI](https://pokeapi.co/) for providing the Pokemon data
- The Pokemon Company for creating the amazing Pokemon universe
- Apple for the excellent SwiftUI and Core Data frameworks

## 📞 Support

If you encounter any issues or have questions, please:
1. Check the existing issues on GitHub
2. Create a new issue with detailed information
3. Include device and iOS version information

---

**Made with ❤️ for Pokemon fans everywhere**
