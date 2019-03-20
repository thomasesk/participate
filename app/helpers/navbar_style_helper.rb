module NavbarStyleHelper
  def navbar_style
    params[:controller] == "devise/sessions" || current_page?(root_path) || params[:controller] == "suscriptions"
  end
end
