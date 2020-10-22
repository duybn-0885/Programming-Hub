class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound do
    redirect_back fallback_location: root_path, alert: t("errors.messages.resource_not_found")
  end
  rescue_from Pundit::NotAuthorizedError do
    redirect_back fallback_location: root_path, alert: t("errors.messages.permission_denied")
  end
  rescue_from Pagy::OverflowError do
    redirect_back fallback_location: root_path, alert: t("errors.messages.resource_not_found")
  end

  class << self
    def default_url_options
      { locale: I18n.locale }
    end
  end

  protect_from_forgery with: :exception

  private

  def set_locale
    I18n.locale = params[:locale] || current_user.try(:language) || I18n.default_locale
  end
end
