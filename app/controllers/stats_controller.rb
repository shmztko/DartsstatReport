class StatsController < ApplicationController
  # List all date that login user played darts.
  def index
    @played_dates = current_user.played_dates
  end

  # Get records with specified date
  # stats/details/:year/:month/:date
  def details
    @stats_by_date = current_user.record_by_date(
      Date.new(params[:year].to_i, params[:month].to_i, params[:date].to_i)
    ).statistics
    p @stats_by_date
  end
end
