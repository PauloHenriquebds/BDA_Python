import mysql.connector
banco = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "302302",
    database = "academiaturmac"
)

def create(opcao):
    meucursor = banco.cursor()
    match opcao:

        case "1":
            print("Aluno")
            nome = input("Nome: ")
            cpf = input("CPF: ")
            telefone = input("Telefone: ")
            endereco = input("Endereço: ")
            comando = "insert into alunos(nome, cpf, telefone, endereco) values(%s,%s,%s,%s)"
            dados = (nome, cpf, telefone, endereco)
            meucursor.execute(comando, dados)
            banco.commit()
            print("Inserido")

        case "2":
            print("Funcionários")
            nome = input("Nome: ")
            cpf = input("CPF: ")
            departamento = input("Departamento: ")
            salario = input("Salario: ")
            email = input("Email: ")
            comando = "insert into funcionarios(Nome, CPF, Departamento, Salario, Email) values(%s,%s,%s,%s)"
            dados = (nome, cpf, departamento, salario, email)
            meucursor.execute(comando, dados)
            banco.commit()
            print("Inserido")

        case "3":
            print("Modalidade")
            nome = input("Nome: ")
            duracao = input("Duracao: ")
            meucursor = banco.cursor()
            comando = "insert into modalidades(nome, duracao) values(%s,%s)"
            dados = (nome, duracao)
            meucursor.execute(comando, dados)
            banco.commit()
            print("Inserido")

        case "4":
            print("Personal")
            nome = input("Nome: ")
            cpf = input("CPF: ")
            email = input("Email: ")
            endereco = input("Endereço: ")
            telefone = input("Telefone: ")
            cref = input("CREF: ")
            comando = "insert into personal(nome, cpf, email, endereco, telefone,  cref) values(%s,%s,%s,%s,%s,%s)"
            dados = (nome, cpf, email, endereco, telefone, cref)
            meucursor.execute(comando, dados)
            banco.commit()
            print("Inserido")

        case _:
            print("Opção invalida")

def read(opcao):
    global tabela
    match opcao:

        case "1":
            tabela = "alunos"
        case "2":
            tabela = "funcionarios"
        case "3":
            tabela = "modalidades"
        case "4":
            tabela = "personal"
        case _:
            print("Opção invalida")

    meucursor = banco.cursor()
    pesquisa = f"select * from {tabela};"
    meucursor.execute(pesquisa)
    resultado = meucursor.fetchall()
    for x in resultado:
        print(x)

def delete(opcao):
    match opcao:

        case "1":
            print("Alunos")
            matricula = int(input("Matricula: "))
            meucursor = banco.cursor()
            comando = f"delete from alunos where matricula = {matricula};"
            meucursor.execute(comando)
            banco.commit()
            print("Dado deletado")

        case "2":
            print("Funcionarios")
            Id_Funcionario = int(input("Id do funcionario: "))
            meucursor = banco.cursor()
            comando = f"delete from alunos where Id_Funcionario = {Id_Funcionario};"
            meucursor.execute(comando)
            banco.commit()
            print("Dado deletado")

        case "3":
            print("Modalidaes")
            Id_Modalidade = int(input("Id da modalidade: "))
            meucursor = banco.cursor()
            comando = f"delete from alunos where Id_Modalidade = {Id_Modalidade};"
            meucursor.execute(comando)
            banco.commit()
            print("Dado deletado")

        case "4":
            print("Personal")
            Id_Personal = int(input("ID do personal: "))
            meucursor = banco.cursor()
            comando = f"delete from alunos where Id_Personal = {Id_Personal};"
            meucursor.execute(comando)
            banco.commit()
            print("Dado deletado")

        case _:
            print("Opção invalida")