class PositionsController < ApplicationController
  def create
    @yelp_results = YelpWrapper.new(params, 4500).search_for_bars
  end
end
