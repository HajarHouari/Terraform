1) Pourquoi éviter local-exec pour configurer l’application ?
local-exec lance des commandes sur l’ordinateur de la personne qui utilise Terraform.
Du coup, ça peut marcher sur un PC mais pas sur un autre. Ca dépend de ce qui est installé sur la machine ce n’est pas fiable en groupe
Terraform sert surtout à créer l’infrastructure, pas à configurer l’application.
C’est pour ça qu’on évite local-exec.

2) En quoi les variables et les outputs facilitent l’industrialisation ?
Les variables permettent de changer facilement des valeurs (nom du container, port, image…) sans modifier le code.
Les outputs affichent des informations utiles à la fin (URL, port, nom du container).
Grâce à ça, le projet est plus simple à réutiliser, plus clair, plus facile à automatiser

3) Qu’apporte un réseau Docker dédié ?
Un réseau Docker dédié permet de séparer notre projet des autres containers, d’éviter les conflits et d’avoir une organisation plus propre
C’est plus clair et plus sécurisé.

4) Différence entre « provisionner » et « configurer » ici ?
Provisionner : créer les éléments techniques
(réseau, volume, image, container, ports) → fait avec Terraform
Configurer : régler le fonctionnement de l’application
(fichiers, contenu, paramètres internes)
Ici, Terraform provisionne l’environnement Docker, mais ne configure pas l’application.
