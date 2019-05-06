# Classe para editar formulario
class Formulario < SitePrism::Page
  set_url 'https://automacaocombatista.herokuapp.com/users/new'

  element :name_txt, '#user_name'
  element :lastaname_txt, '#user_lastname'
  element :email_txt, '#user_email'
  element :address_txt, '#user_address'
  element :universyti_txt, '#user_university'
  element :profession_txt, '#user_profile'
  element :gender_txt, '#user_gender'
  element :age_txt, '#user_age'
  element :clicar_btn, 'input[name=commit]'
  element :validacao_msg, '#notice'
  element :back_btn, '.btn.waves-light.red'
  element :result_back, '.orange-text.center'
  element :msg_erro, '#error_explanation'

  def dados_cadastrais
    name_txt.set 'Renata'
    lastaname_txt.set 'Pereira'
    email_txt.set 'renata.pereira@gmail.com'
    address_txt.set 'Rotary'
  end

  def dados_extras
    universyti_txt.set 'Metodista'
    profession_txt.set 'QA'
    gender_txt.set 'Feminino'
    age_txt.set '27'
    clicar_btn.click
  end

  def voltar
    back_btn.click
  end

  def sem_email
    name_txt.set 'Luis'
    lastaname_txt.set 'Silva'
    clicar_btn.click
  end

  def preencher_principais
    name_txt.set 'Renatinha'
    lastaname_txt.set 'Pereira'
    email_txt.set 'renata.pereira@gmail.com'
    clicar_btn.click
  end
end
