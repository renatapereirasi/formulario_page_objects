#language: pt
#utf-8

Funcionalidade: Cadastrando novo usuário
	Eu como usuária do site
	Quero preencher todos os dados cadastrais
	Para conseguir logar no sistema 

	Cenario: Cadastro
		Dado que eu esteja na pagina dor formulario
		Quando eu preencher todos os dados cadastrais
		Entao vejo a mensagem de 'Usuário Criado com sucesso'

