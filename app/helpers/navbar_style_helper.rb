module NavbarStyleHelper
  def navbar_style
    current_page?(edit_user_registration_path) || current_page?(new_user_registration_path) || current_page?(new_user_session_path) || current_page?(root_path) || current_page?(new_user_password_path) || current_page?(new_user_suscription_path(current_user))
  end
end
