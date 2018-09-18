class WelcomeController < ApplicationController
  layout "application_login_link", only: [:home]
  before_action :require_login, only: [:index]
  before_action :redirect_to_index_if_logged_in, only: [:home]

  def home
  end

  def index
    @offers = current_user.giver.offers
    @requests = current_user.receiver.requests
  end
end
