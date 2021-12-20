# Commandes vues day two!

## Install de minetest

* `git`: Command pour l'utilisateur de dépot de code versionné sous git
```shell
git clone https://github.com/minetest/minetest.git # copie en local d'une repository distant
```

* 🕸️ `wget`: Client HTTP 
```shell
wget https://github.com/minetest/minetest/archive/master.tar.gz # Téléchargement en local du fichier distant
```

* 🗜️ `tar`: Commande de manipulation de fichier archive tar 
```shell
tar xzf master.tar.gz  # Decompression de l'archive
```

* `cmake`: Commande de creation de Makefile
```shell
cmake . -DRUN_IN_PLACE=TRUE   # Creation des Makefile dans le dossier sourant .
```

* `make`: Outil de gestion de la compilation de programme
```shell
make -j$(nproc) # Lancement de la compialtion via make (Gestion des dépendances liés à la compilation)
```

* 🧊 `minetest`: Logiciel minetest fraichement compilé 🧊
```shell
./bin/minetest --server # Démarrage en mode serveur du programe minetest
```

## Utilisation de systemctl

* `systemctl daemon-reload`: Rechangement de la confioguration de systemctl apres la modification d'une unit
* `systemctl enable/disable` : Activation d'un service au démarrage
```shell
systemctl enable minetest-server
```

* `systemctl stop/start` : Arret/Démarrage d'un service en cours
```shell
systemctl stop minetest-server
```

* `systemctl status` : Arret d'un service en cours
```shell
systemctl status minetest-server
```

* 📰 `journalctl ` : Affichage des logs via journalctl
```shell
journalctl -u minetest-server # Affichage des logs de l'unite minetest
```

