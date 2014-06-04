class PositionsController < ApplicationController
  def create
    @yelp_results = YelpWrapper.new(params).search_for_bars
  end
end
