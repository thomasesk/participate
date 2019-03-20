module NavbarStyleHelper
  def navbar_style
    params[:controller] == "devise/sessions" || current_page?(root_path) || params[:controller] == "suscriptions" || params[:controller] == "devise/registrations"
  end
end
