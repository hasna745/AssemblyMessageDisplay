org 100h ; Point d'entrée pour les programmes DOS

start:
    ; Affichage du message "Enter something: $"
    mov ah, 09h ; Fonction pour afficher une chaîne
    lea dx, msg1 ; Charger l'adresse effective de msg1 dans dx
    int 21h ; Interruption DOS

    ; Lecture de l'entrée utilisateur dans le tampon à phrase
    mov ah, 0Ah ; Fonction pour lire une chaîne
    lea dx, phrase ; Charger l'adresse effective de phrase dans dx
    int 21h ; Interruption DOS

    ; Affichage du message "You wrote: $"
    mov ah, 09h ; Fonction pour afficher une chaîne
    lea dx, msg2 ; Charger l'adresse effective de msg2 dans dx
    int 21h ; Interruption DOS

    ; Affichage de la chaine entrée par l'utilisateur
    mov ah, 09h ; Fonction pour afficher une chaîne
    lea dx, [phrase+2] ; Charger l'adresse effective de la chaîne entrée par l'utilisateur dans dx
    int 21h ; Interruption DOS

    ; Fin du programme
    mov ah, 4Ch ; Fonction pour quitter le programme
    int 21h ; Interruption DOS

msg1 db "Enter something: $"
msg2 db 13, 10, "You wrote: $"
phrase db 100 dup('$')
