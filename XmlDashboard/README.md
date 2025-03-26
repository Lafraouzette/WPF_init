# **WPF - Windows Presentation Foundation**
# 🚩 Objectifs
- Apprendre les bases de WPF.
- MVVM
- Pratiquer les bases de XML avec un projet de reservation hotel.

# **📖 Theorie :**

## Qu'est-ce que WPF ❓
WPF (Windows Presentation Foundation) est un framework développé par Microsoft pour la création d'applications de bureau sous Windows. Il permet de concevoir des interfaces utilisateur modernes et interactives en utilisant XAML pour la définition des interfaces et C# pour la logique métier. WPF offre des fonctionnalités avancées telles que :

- **Séparation du code et de l'interface** grâce à XAML.
- **Prise en charge du binding de données** pour faciliter la gestion des interfaces dynamiques.
- **Graphismes avancés** avec le support du rendu 2D et 3D.
- **Système de styles et de templates** pour personnaliser les contrôles UI.
- **Gestion fluide des animations et des effets visuels**.
- **Support de MVVM (Model-View-ViewModel)**, une architecture permettant une meilleure séparation des préoccupations.

## 📂 Structure d'un projet WPF
- Lors de la création d'un projet WPF dans Visual Studio, la structure suivante est générée :
### generale view 🧐
```
C:.
└─── WPF_Project
    ├─── WPF_Project :  contient tout le code, les fichiers XAML et les autres ressources que Visual Studio utilise pour construire l'application.
    │   
    └─── WPF_Project.sln : la solution Visual Studio pour ouvrir et gérer l'ensemble du projet WPF.(la plupart du temps on l'ouvre en premier et on travail dedans) 
```
### ‼️np: **.vs/ c'est un dossier qui contient ...! ignore dans .ignore 📍**

### WPF_Project.sln
```
WPF_Project.sln 
        ├─── dependencies
        │   
        │─── app.xml 
        │       │─── app.cs : le premiere file qui se lance (lentree de lapplication, il lance MainWindow )
        │
        │── AssemblyInfo.cs
        │
        └─── MainWindow.xaml : on peut dire que c'est le fichier html de l'application 
                │─── MainWindow.cs : logique de MainWindow
```

# Concepts Clés de WPF 🔑

## 📌 XAML (Extensible Application Markup Language)
- Langage déclaratif pour définir l'interface utilisateur en WPF.
- Permet une séparation claire entre le design (XAML) et la logique (C#).

## 🎨 Styles
- Centralisent l'apparence des contrôles pour une cohérence visuelle.
- Utilisation de `Resources` et `StaticResource/DynamicResource`.

## 💻 Code-behind
- Logique C# associée à un fichier XAML.
- À utiliser avec modération pour respecter l'architecture MVVM.

## ⌨ Commandes (ICommand)
- Alternative aux événements pour une meilleure séparation des préoccupations.

## 📊 Liaison de Données (Data Binding)
- Data binding is the process that establishes a connection between the app UI and the data it displays. If the binding has the correct settings and the data provides the proper notifications, when the data changes its value, the elements that are bound to the data reflect changes automatically.
- Lie les propriétés UI aux données automatiquement.
- Modes : `OneWay`, `TwoWay`, `OneTime`.
- Utilise `INotifyPropertyChanged` pour les mises à jour dynamiques.

## 🏗 Architecture MVVM (Model-View-ViewModel)
Patron de conception dérivé de MVC, spécialement adapté pour WPF :

| Composant   | Rôle                                                                 |
|-------------|----------------------------------------------------------------------|
| **Model**   | Données et logique métier (C#), Le Modèle communique avec le serveur et notifie le ViewModel de son changement.                                                      |
| **View**    | Interface utilisateur (XAML), La Vue reçoit toujours les actions de l’utilisateur et interagit seulement avec le ViewModel.                              |
| **ViewModel**| Intermédiaire entre View et Model :                                 |
|             | - Implémente `INotifyPropertyChanged`                                |
|             | - Expose les commandes (ICommand)                                    |
|             | - Gère la validation des données                                     |
|             | - Écoute les événements du Model                                     |
|             | - présenter les données du Model à la Vue                                   |

## Navigation 
## DependencyInjection
![Schéma MVVM](MVVM-2.png)

### 📚 Ressources Recommandées
- Tutoriel MVVM  : [japf.developpez.com](https://japf.developpez.com/tutoriels/dotnet/mvvm-pour-des-applications-wpf-bien-architecturees-et-testables/#LIV)
- Playlist XML (niveau débutant, en arabe) : [Xml](https://www.youtube.com/playlist?list=PLjTzpE6cvFakLb80cpN-9vUcGgL_BbOPI) (utile pour les bases avant WPF)
- youtube mvvm : [MVVM](https://www.youtube.com/playlist?list=PLA8ZIAm2I03hS41Fy4vFpRw8AdYNBXmNm)

## � Projet Pratique
**Exemple à réaliser** :  
📌 Créer un *Dashboard avec système de navigation* pour appliquer ces concepts.  
→ Commencer par un design simple en XAML avant d'implémenter le Data Binding et MVVM.




# **practice : reservation Project 🧮**
## Objectif 
- Pratiquer les bases de WPF et de la liaison de données.
- Comprendre la structure d'un projet WPF et la séparation des préoccupations.
- Utiliser les contrôles de base de WPF (Button, TextBox, etc.).
- Gérer les événements utilisateur (clic de bouton).
- Personnaliser l'interface utilisateur avec des styles et des templates.
- Utiliser MVVM pour séparer la logique métier de l'interface utilisateur.

## creer le projet 
- Ouvrir Visual Studio et créer un nouveau projet WPF.
- Nommer le projet "reservation" et choisir un emplacement pour enregistrer le projet.
- Sélectionner le framework .NET Core ou .NET Framework selon vos préférences.
- Cliquer sur "Create" pour générer le projet.
- Visual Studio crée automatiquement une fenêtre principale (MainWindow.xaml) et un fichier de code-behind (MainWindow.xaml.cs).
ou utiliser la ligne des commande et taper : 
```bash
dotnet new wpf -n reservation
```

## Structure du Projet
```
C:.
└─── reservation
    ├─── reservation : Le dossier reservation contient tout le code, les fichiers XAML et les autres ressources que Visual Studio utilise pour construire l'application.
    │   
    └─── reservation.sln : Le fichier .sln est l'entrée principale dans Visual Studio pour ouvrir et gérer l'ensemble du projet reservation.
```
## go on to reservation.sln and create your app check the code source 

   
## Conclusion
WPF est un framework puissant et flexible pour le développement d'applications de bureau sous Windows. Il offre une architecture moderne, une séparation claire entre la logique métier et l'interface utilisateur, ainsi que de nombreuses fonctionnalités avancées. Ce projet de calculatrice est une excellente manière de se familiariser avec les bases de WPF et du langage XAML.

# XML Language 
- Youtube links 🔗  for xml en arabe (lvl 0) : https://www.youtube.com/playlist?list=PLjTzpE6cvFakLb80cpN-9vUcGgL_BbOPI (playlist pour android vous, voir que les video xml)
# WPF youtube links : 
wpf For beginner (lvl 0) : https://www.youtube.com/playlist?list=PLhiFu-f80eo_G_vy3chqA7ClqVUvohs8N
WPF tuto (lvl 1): https://www.youtube.com/playlist?list=PLih2KERbY1HHOOJ2C6FOrVXIwg4AZ-hk1
crud : https://www.youtube.com/watch?v=8xPzjYBYu-M&list=PL7FAIXDZVr6ZyrYGS-SjrXrhz8Ut52xPO&ab_channel=VetrivelD
MVVM : https://www.youtube.com/watch?v=i_DlDYFR0Ag&list=PLEGjYQQO3ST8hatajWNDUGVwo437sPv8G&ab_channel=TechieSyed