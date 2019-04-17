Dado('que eu esteja na pagina dor formulario') do
  @cadastramento = Formulario.new
  @cadastramento.load
end

Quando('eu preencher todos os dados cadastrais') do
  @cadastramento.cadastrar
end

Entao('vejo a mensagem de {string}') do |mensagem_validacao|
  @sucesso = Formulario.new.validacao_msg
  expect(mensagem_validacao).to eq(@sucesso.text)
end
