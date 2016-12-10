a1 = Atividade.find_or_create_by(titulo: "Lavar Louça")
a2 = Atividade.find_or_create_by(titulo: "Jogar UNO")
a3 = Atividade.find_or_create_by(titulo: "Fazer Compras")
a4 = Atividade.find_or_create_by(titulo: "Planejar Curso")
Atividade.find_or_create_by(titulo: "Lavar o Banheiro")
Atividade.find_or_create_by(titulo: "Fazer Café")

u1 = Usuario.find_or_create_by(nome: "Fabio")
u2 = Usuario.find_or_create_by(nome: "Luis")
Usuario.find_or_create_by(nome: "Marco")
Usuario.find_or_create_by(nome: "Vinicius")
Usuario.find_or_create_by(nome: "Leonardo")
Usuario.find_or_create_by(nome: "Jeff")


u1.atividades << a1
u1.atividades << a2
u2.atividades << a3
u2.atividades << a4
u1.save
u2.save
