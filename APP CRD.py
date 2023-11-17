from biblioteca import *

import mysql.connector

while True:
    opcao = input("Menu\n1- create\n2- read\n3- delete\ns- sair\n escolha uma dessas a cima").lower()
    match opcao:
        case "1":
            op = input("\nMenu\n1-Alunos \n2-funcionarios \n3-modalidade \n4-personal\n\nEscolha uma opção: ")
            create(op)
        case "2":
            op = input("\nMenu\n1-Alunos \n2-funcionarios \n3-modalidade \n4-personal\n\nEscolha uma opção: ")
            read(op)
        case "3":
            op = input("\nMenu\n1-Alunos \n2-funcionarios \n3-modalidade \n4-personal\n\nEscolha uma opção: ")
            delete(op)
        case "s":
            break
        case _:
            print("Opção invalida")