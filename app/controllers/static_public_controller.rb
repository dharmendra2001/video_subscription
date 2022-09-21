class StaticPublicController < ApplicationController
  skip_before_action :authenticate_user!, only: %[landing_page privacy]
  def landing_page
  end

  def privacy
  end

  def term
  end
end
