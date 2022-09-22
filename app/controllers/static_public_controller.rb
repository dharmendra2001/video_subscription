class StaticPublicController < ApplicationController
  #skip_before_action :authenticate_user!, only: %[landing_page privacy]
  skip_before_action :authenticate_user!
  def landing_page
  end

  def privacy
  end

  def term
  end
end
