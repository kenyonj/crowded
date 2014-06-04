class YelpWrapper
  include Yelp::V2::Search::Request

  def initialize(params)
    @latitude = params[:latitude]
    @longitude = params[:longitude]
  end

  def search_for_bars
    client.search(request)
  end

  private

  attr_reader :latitude, :longitude

  def client
    Yelp::Client.new
  end

  def request
    GeoPoint.new(
      latitude: latitude,
      longitude: longitude,
      limit: 5,
      category_filter: "nightlife,bars",
      radius_filter: 500
    )
  end
end
