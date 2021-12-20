# Commandes vues day two!

## Commandes pour la gestion du réseau

* `ip`: Outil de configuration du réseau
```shell
# Ajout des adresses ip 
ip addr add 10.102.66.200/24 dev enp0s25 # Ajout d'une adresse ip sur l'interface enp0s25
ip a a 10.102.66.200/24 dev enp0s25 # Ajout d'une adresse ip sur l'interface enp0s25 (version courte)

# Liste des adresses ip 
ip addr show dev enp0s25 # Liste des adresses IP de l'interface enp0s25
ip a s dev enp0s25 # Liste des adresses IP de l'interface enp0s25(version courte)

# Suppression d'adresse ip 
ip addr delete 10.102.66.200/24 dev enp0s25 # Suppression d'une adresse ip sur l'interface enp0s25
ip a d 10.102.66.200/24 dev enp0s25 # Suppression d'une adresse ip sur l'interface enp0s25 (version courte)


ip route add default via 10.102.66.1 # Ajout de la route par default

ip r s dev ens0p25 # Affhicage des routes de l'interface ens0p25(version courte)

ip r d 10.32.20.0/24 via 10.102.66.2 dev enp0s25 # Suppression d'une route spécifique
```

* `ping` : Outil de test de connectivité icmp
```shell

ping 1.1.1.1 # test de la connectivité icmp avec l'adresse 1.1.1.1

ping -f 10.102.66.12 # Ping de type flood

ping -a 1.1.1.1.1 # Fait "sonner" le terminal
```

* `traceroute` : Outil de test de connectivité et affichage des NextHops
```shell

traceroute -I -n -A 1.1.1.1 # test de la connectivité en icmp avec l'affichage des AS et sans la resolution de nom inversée pour l'adresse 1.1.1.1
```

* `tcpdump` : sniffer d'interface réseau
```shell
tcpdump -n -i ens0p25 port 80 # Surveillance des flux ayant commme port tcp (source ou destination)  80:http 
```

* `iperf`: Outil de test de bande passante entre 2 linux
```shell
iperf -s # lancement du serveur
iperf -c <adresses_serveur> # lancement du client vers le serveur
```

## Manipulation de fichier texte


* `cat`: affiche sur la sortie standard 
```shell
cat monfichier.txt
```
* `head`: affiche le debut du fichier
```shell
head monfichiertexte
```
* `tail`: Affiche la fin du fichier
```shell
tail monfichier.txt
tail  -n 5  monfichier.txt # affichage des 5 dernieres lignes
tail -f monfichier.log # Affichage de la fin du fichier et on reste en attente de nouvelles lignes
```

* `wc`: Permet de compter des lignes, des caracteres ou des mots
```shell
wc -l /etc/passwd
```

* `sort`: Trie les lignes
```shell
sort /etc/passwd
```

* `cut`: Extrait des champs des lignes
```shell
cut -d':' -f 1 /etc/passwd # extrait la listes des utilisateurs du fichier passwd
```

