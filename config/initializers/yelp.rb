Yelp.configure(
  yws_id: ENV.fetch("YWSID"),
  consumer_key: ENV.fetch("YELP_CONSUMER_KEY"),
  consumer_secret: ENV.fetch("YELP_CONSUMER_SECRET"),
  token: ENV.fetch("YELP_TOKEN"),
  token_secret: ENV.fetch("YELP_TOKEN_SECRET")
)
