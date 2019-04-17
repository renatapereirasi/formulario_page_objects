class Formulario < SitePrism::Page
  set_url 'https://automacaocombatista.herokuapp.com/users/new'
  element :name_txt, '#user_name'
  element :lastaname_txt, '#user_lastname'
  element :email_txt, '#user_email'
  element :addres_txt, '#user_address'
  element :universyti_txt, '#user_university'
  element :profession_txt, '#user_profile'
  element :gender_txt, '#user_gender'
  element :age_txt, '#user_age'
  element :clicar_btn, 'input[name=commit]'
  element :validacao_msg, '#notice'

  def cadastrar
    name_txt.set 'Renata'
    lastaname_txt.set 'Pereira'
    email_txt.set 'renata.pereira@gmail.com'
    addres_txt.set 'Rotary'
    universyti_txt.set 'Metodista'
    profession_txt.set 'QA'
    gender_txt.set 'Feminino'
    age_txt.set '27'
    clicar_btn.click
  end
end
