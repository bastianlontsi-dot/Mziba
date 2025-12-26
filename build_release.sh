#!/bin/bash

# Nettoyer le projet
echo "🔄 Nettoyage du projet..."
flutter clean

# Récupérer les dépendances
echo "📦 Récupération des dépendances..."
flutter pub get

# Générer les fichiers localisés si tu utilises l10n
# if [ -f "l10n.yaml" ]; then
#   echo "🌍 Génération des fichiers de traduction..."
#   flutter gen-l10n
# fi

# Construire en APK release
echo "📱 Génération de l'APK release..."
flutter build apk --release

# Construire en App Bundle release (Play Store)
echo "📦 Génération du AAB release..."
flutter build appbundle --release

echo "✅ Build terminé !"
echo "📂 APK disponible : build/app/outputs/flutter-apk/app-release.apk"
echo "📂 AAB disponible : build/app/outputs/bundle/release/app-release.aab"
