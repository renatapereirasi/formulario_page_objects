#language: pt
#utf-8
Funcionalidade: Cadastrando novo usuário
	Eu como usuária do site
	Quero preencher todos os dados cadastrais
	Para conseguir logar no sistema 

Contexto: Usuário acessa pagina do formulário
		Dado que eu esteja na pagina do formulario do site automação
@cadastrar
	Cenario: Cadastro
		Quando eu preencher todos os dados cadastrais
		Entao vejo a mensagem de 'Usuário Criado com sucesso'
@voltar
	Cenario: Voltar
		Quando eu clicar em voltar
		Entao verei a frase de 'Bem vindo ao Site de Automação do Batista.'
@sem_email	
	Cenario: Cadastrar sem email
		Quando não digitar e-mail no capo email
		Entao Receberei mensagem de Erro 'BR.activerecord.errors.models.user.attributes.email.blank'
@principais
	Cenario: Cadastro com campos principais
		Quando eu preencher somente os campos principais
		Entao vejo a mensagem de 'Usuário Criado com sucesso'