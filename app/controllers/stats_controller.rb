class StatsController < ApplicationController
  def index
  	@played_dates = current_user.played_dates
  end
end
