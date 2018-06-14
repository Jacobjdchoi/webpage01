class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :default_lang
  before_action :set_locale

private
  def set_locale
    I18n.locale =
    unless params[:locale].present?
      default_lang
    else
      params[:locale]
    end
  end

  def default_lang
    if I18n.available_locales.include?(browser_locale)
      browser_locale
    else
      :ko
    end
  end

  # w/o the code below product object is passed as locale params
  def default_url_options(options={})
    {locale: I18n.locale}
    # this code below does not work
    # Rails.application.routes.default_url_options[:locale] = I18n.locale
  end

  def browser_locale
    :"#{request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first}"
  end

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

end
