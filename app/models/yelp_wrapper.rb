class YelpWrapper
  include Yelp::V2::Search::Request

  def initialize(params, radius = 500)
    @latitude = params[:latitude]
    @longitude = params[:longitude]
    @radius = radius
  end

  def search_for_bars
    client.search(request)
  end

  private

  attr_reader :latitude, :longitude, :radius

  def client
    Yelp::Client.new
  end

  def request
    GeoPoint.new(
      latitude: latitude,
      longitude: longitude,
      limit: 5,
      category_filter: "nightlife,bars",
      radius_filter: radius
    )
  end
end
