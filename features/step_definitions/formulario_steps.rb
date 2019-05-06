Dado('que eu esteja na pagina do formulario do site automação') do
  @cadastramento = Formulario.new
  @cadastramento.load
end

Quando('eu preencher todos os dados cadastrais') do
  @cadastramento.dados_cadastrais
  @cadastramento.dados_extras
end
Entao('vejo a mensagem de {string}') do |mensagem_validacao|
  @sucesso = Formulario.new.validacao_msg
  expect(mensagem_validacao).to eq(@sucesso.text)
end

Quando('eu clicar em voltar') do
  @cadastramento.voltar
end
Entao('verei a frase de {string}') do |automacao_batista|
  @bemvindo = Formulario.new.result_back
  expect(automacao_batista).to eq(@bemvindo.text)
end

Quando('não digitar e-mail no capo email') do
  @cadastramento.sem_email
end
Entao('Receberei mensagem de Erro {string}') do |mensagem_erro|
  expect(mensagem_erro).to eq'BR.activerecord.errors.models.user.attributes.email.blank'
end

Quando('eu preencher somente os campos principais') do
  @cadastramento.preencher_principais
end
Entao('Usuário Criado com sucesso {string}') do |created_user|
  @created = Formulario.new.validacao_msg
  expect(created_user).to eq(@created.text)
end
