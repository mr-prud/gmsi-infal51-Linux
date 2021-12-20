
# Commandes vues day one!

## Aide des commandes 🆘

* `man`: Outil d'aide.
```shell
man ls # l'aide détaillé de la commande ls
man man # L'aide de l'outil d'aide ♾️
```


## Commandes de base

* `mkdir` : creation de dossiers
* `pwd` : affiche le dossier courant
* `echo`: affiche un message
* `cd`: changement de dossiers

```shell
pwd
mkdir -p dossier/parent/autre/dossier
echo Je suis dans `pwd`
echo Je suis dans 'pwd'
cd `pwd`/dossier/parent/autre/dossier
echo Je suis dans `pwd`
cd -
echo Je suis dans `pwd`
cd dossier/parent/autre/dossier
echo Je suis dans `pwd`
```


* `touch`: creation de fichier vide ou changement de la date du fichier
* `ls`: lister les fichiers
* `cp/mv`: copie et deplacement de fichier
* `rm`: supprime un fichiers ou dossiers



```shell
ls
touch titi
cp titi toto
ls
mv toto tata 
ls -al
```


* `ps`: affiche les processus en cours
```shell
ps aux
ps -edf
```
* `top`: Visu des ressources systemes
* `htop`: comme top, mais avec plus de couleurs 🌈



## Gestion des packages 📦

* `dpkg`: outil de gestion des fichiers packages deb
```shell
# installation un le fichier ~/assets/tp1/cowsay.deb
dpkg 
```
* `apt`: Outil de gestion depackage debian
```shell
apt update # mise à jour des versions des packages installables depuis le repository distant
apt search <nom_du_package> # Recherche de package
apt install <nom_du_package> # Installation du package
apt remove <nom_du_package> # Suppression du package
```



