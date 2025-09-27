# Anime UI
A Flutter showcase app that recreates a modern anime streaming home screen with polished animations, modular widgets, and consistent theming.

## Features
- Curated "Top Picks" carousel with animated scaling and category filtering.
- Reusable widget library for headers, filters, cards, and bottom navigation.
- Responsive typography and spacing powered by `flutter_screenutil`.
- Theme palette and text styles centralized for easy customization.


## Project Structure
```
lib/
  core/
    di/                // Dependency injection setup (get_it)
    helpers/           // Reusable helpers (spacing, extensions)
    theming/           // Colors, text styles
  features/
    home/
      data/           // Remote datasources & repositories (stubs)
      domain/         // Entities, repositories, use cases
      presentation/
        pages/        // HomePage
        widgets/      // Modular home screen components
        models/       // Static demo data for UI
anime_app.dart          // App entry point + ScreenUtil init
main.dart               // Bootstraps AnimeApp
```

## UI Preview
Run the app and open the home screen to view:
- Gradient hero header with tagline
- Category chips with animated selection states
- Horizontally scrolling featured anime cards
- Top characters strip with circular avatars
- Floating bottom navigation inspired by modern streaming apps

## Customization Tips
- Update static demo content in `lib/features/home/presentation/models/home_static_data.dart`.
- Replace placeholder assets under `assets/images/` with your preferred artwork.
- Adjust design tokens in `lib/core/theming` to reskin the experience.



