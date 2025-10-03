# 📚 Dictionnaire Français-Danois / Fransk-Dansk Ordbog

Un dictionnaire bilingue interactif et facile à utiliser pour les traductions français-danois et danois-français.

## 🌟 Fonctionnalités

- **🔍 Recherche instantanée** : Trouvez rapidement vos traductions
- **📱 100% Responsive** : Fonctionne sur tous vos appareils
- **✏️ Interface d'administration simple** : Ajoutez et modifiez des mots sans connaissances techniques
- **🏷️ Catégories organisées** : Mots classés par thèmes
- **📚 Exemples d'utilisation** : Chaque traduction inclut des exemples pratiques
- **🔊 Guide de prononciation** : Notation phonétique internationale
- **📤 Import/Export** : Sauvegardez et partagez facilement vos données

## 🚀 Démarrage rapide

### Pour les utilisateurs (consultation du dictionnaire)

1. Ouvrez votre navigateur
2. Naviguez vers votre site web
3. Choisissez votre direction de traduction :
   - **🇫🇷 → 🇩🇰** pour français vers danois
   - **🇩🇰 → 🇫🇷** pour danois vers français
4. Utilisez la barre de recherche pour trouver vos mots
5. Filtrez par catégories si nécessaire

### Pour les administrateurs (ajout/modification de mots)

1. Cliquez sur **"✏️ Modifier"** dans le menu
2. Utilisez l'onglet **"➕ Ajouter un mot"** pour ajouter de nouvelles traductions
3. Gérez les mots existants dans l'onglet **"📝 Gérer les mots"**
4. Sauvegardez régulièrement avec **"📁 Import/Export"**

## 📝 Comment ajouter des mots (Guide ultra-simple)

### Méthode 1 : Interface web (Recommandée)

1. **Accédez à l'administration** : Cliquez sur "✏️ Modifier" depuis n'importe quelle page
2. **Remplissez le formulaire** :
   - Choisissez la direction (FR→DA ou DA→FR)
   - Tapez le mot original
   - Tapez la traduction
   - Sélectionnez une catégorie
   - Ajoutez des exemples d'utilisation
3. **Cliquez sur "💾 Ajouter le mot"**
4. **C'est tout !** Le mot apparaît immédiatement

### Méthode 2 : Modification directe du fichier JSON

Si vous préférez modifier directement le fichier de données :

1. **Trouvez le fichier** : `data/dictionary.json`
2. **Ouvrez-le** avec n'importe quel éditeur de texte (Notepad, TextEdit, VS Code, etc.)
3. **Ajoutez votre mot** en suivant ce format :

Pour un mot **Français → Danois**, ajoutez dans la section `"fr_da"` :
```json
{
  "word": "pain",
  "translation": "brød",
  "category": "nourriture",
  "pronunciation": "pɛ̃",
  "examples": [
    "Du pain frais → Friskt brød",
    "J'achète du pain → Jeg køber brød"
  ]
}
```

Pour un mot **Danois → Français**, ajoutez dans la section `"da_fr"` :
```json
{
  "word": "brød",
  "translation": "pain",
  "category": "mad",
  "pronunciation": "brœð",
  "examples": [
    "Friskt brød → Du pain frais",
    "Jeg køber brød → J'achète du pain"
  ]
}
```

4. **Sauvegardez le fichier**
5. **Rechargez votre site web**

## 🎯 Structure du projet

```
french_danish_dict/
├── data/
│   └── dictionary.json         # Base de données des traductions
├── content/
│   ├── _index.md              # Page d'accueil
│   ├── admin.md               # Page d'administration
│   ├── fr-da.md               # Page français → danois
│   └── da-fr.md               # Page danois → français
├── layouts/
│   ├── _default/
│   │   ├── baseof.html        # Template de base
│   │   ├── admin.html         # Interface d'administration
│   │   ├── fr-da.html         # Template français → danois
│   │   └── da-fr.html         # Template danois → français
│   └── index.html             # Template page d'accueil
├── static/
│   └── css/
│       └── style.css          # Styles CSS
├── config.toml                # Configuration Hugo
└── README.md                  # Ce fichier
```

## 🛠️ Installation technique (pour développeurs)

### Prérequis
- Hugo (version 0.139.0 ou plus récente)
- Un serveur web ou un service d'hébergement

### Installation locale
```bash
# Cloner le projet
git clone [votre-repo]
cd french_danish_dict

# Télécharger Hugo (Linux)
wget https://github.com/gohugoio/hugo/releases/download/v0.139.0/hugo_0.139.0_linux-amd64.tar.gz
tar -xzf hugo_0.139.0_linux-amd64.tar.gz
chmod +x hugo

# Construire le site
./hugo build

# Serveur de développement
./hugo server
```

### Déploiement
```bash
# Construire pour la production
./hugo build

# Le dossier 'public/' contient votre site web prêt à déployer
```

## 📊 Catégories disponibles

- **Salutation / Hilsen** : Bonjour, au revoir, etc.
- **Politesse / Høflighed** : Merci, s'il vous plaît, etc.
- **Nourriture / Mad** : Aliments et boissons
- **Famille / Familie** : Relations familiales
- **Travail / Arbejde** : Professions et bureau
- **Voyage / Rejse** : Transport et tourisme
- **Temps / Tid** : Dates, heures, saisons
- **Couleurs / Farver** : Couleurs et nuances
- **Nombres / Tal** : Chiffres et quantités
- **Autre / Andet** : Autres mots

## 💾 Sauvegarde et sécurité

### Sauvegarde automatique
- Vos modifications sont automatiquement sauvegardées dans le navigateur
- Utilisez l'onglet "📁 Import/Export" pour télécharger une sauvegarde complète

### Formats de sauvegarde
- **JSON** : Format natif, recommandé pour les sauvegardes complètes
- **CSV** : Format tableur, facile à ouvrir dans Excel ou Google Sheets

### Conseils de sécurité
1. **Sauvegardez régulièrement** : Téléchargez une copie JSON chaque semaine
2. **Testez vos sauvegardes** : Vérifiez que vous pouvez réimporter vos données
3. **Gardez plusieurs copies** : Stockez vos sauvegardes dans différents endroits

## 🆘 Résolution de problèmes

### Problèmes courants

**Q: Je ne vois pas mes modifications après avoir ajouté un mot**
R: Actualisez la page (F5 ou Ctrl+R). Si le problème persiste, vérifiez que votre fichier JSON est valide.

**Q: L'interface d'administration ne fonctionne pas**
R: Assurez-vous que JavaScript est activé dans votre navigateur.

**Q: Comment supprimer un mot ?**
R: Allez dans "📝 Gérer les mots", trouvez le mot et cliquez sur le bouton "🗑️".

**Q: Puis-je importer des mots depuis Excel ?**
R: Oui ! Exportez d'abord votre fichier Excel au format CSV, puis utilisez l'importation CSV.

**Q: Le site ne s'affiche pas correctement sur mobile**
R: Le site est entièrement responsive. Si vous rencontrez des problèmes, essayez de vider le cache de votre navigateur.

### Support
Si vous rencontrez des problèmes :
1. Consultez d'abord cette documentation
2. Vérifiez que votre navigateur est à jour
3. Essayez en navigation privée pour éliminer les problèmes de cache

## 🎨 Personnalisation

### Modifier les couleurs
Éditez le fichier `static/css/style.css` ou les variables CSS dans les templates.

### Ajouter de nouvelles catégories
Modifiez les listes de catégories dans les fichiers de templates HTML.

### Changer la langue de l'interface
Modifiez le fichier `config.toml` et les templates selon vos besoins.

## 📈 Statistiques actuelles

- **Mots français** : Voir la page d'accueil pour le nombre exact
- **Mots danois** : Voir la page d'accueil pour le nombre exact
- **Catégories** : 10 catégories principales
- **Fonctionnalités** : Recherche, filtrage, tri, import/export

## 🤝 Contribution

Vous pouvez contribuer en :
- Ajoutant de nouveaux mots et traductions
- Améliorant les exemples d'utilisation
- Signalant les erreurs ou les mots manquants
- Suggérant de nouvelles fonctionnalités

## 📄 Licence

Ce projet est open source. Vous êtes libre de l'utiliser, le modifier et le distribuer selon les termes de la licence.

## 🎉 Remerciements

Merci à tous les contributeurs qui enrichissent ce dictionnaire !

---

**💡 Conseil :** Commencez par explorer le dictionnaire existant, puis utilisez l'interface d'administration pour ajouter vos propres mots. N'hésitez pas à expérimenter - vous ne pouvez rien casser !