# Journal de projet

## 29-09-2026
- Choix machine serveur : Parrot (IP 192.168.X.X)
- Plan de ports validé (voir plan-ports.md)
- Dépôt Git créé
- Répartition : A = serveur, B = doc + client

## 2026-09-30 — Service 1 : Portail
- Image : nginx:1.27
- Port : 8080:80
- Volume : ./portail → /usr/share/nginx/html (ro)
- Testé depuis Windows : OK
- Test de persistance : OK

## 2025-10-02 — Service 2 : Base de données MySQL

### Réalisé
- Rédaction du script SQL `sql/init.sql` (tables + données de départ)
- Création du volume nommé `mysql-data` pour la persistance
- Création du fichier `.env` (hors dépôt, ajouté au `.gitignore`)
- Lancement du conteneur `mysql-inventaire` avec l'image `mysql:8.4`
- Port publié : 3307 (hôte) → 3306 (conteneur)
- Connexion testée via `docker exec`
- Table `machines` créée et peuplée

### Difficultés rencontrées
- Erreur de syntaxe sur l'option `-v` : un espace entre `docker-entrypoint-initdb.d` et `:ro`
  → Docker interprétait `b.d:ro` comme un nom d'image
  → Corrigé en collant `chemin:/chemin/dans/conteneur:ro`

### Décisions prises
- Port 3307 choisi car 3306 déjà occupé sur la machine serveur
- Volume nommé plutôt que bind mount pour respecter la contrainte de persistance

### Auteur
- Nom de la personne qui a fait le travail