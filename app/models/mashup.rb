class Mashup
  def self.create
    tweets = Twitter.search("fish")
    random_tweet = tweets[rand(tweets.size)]
    search_word = random_tweet.text.split(" ")[3]
    image = Flickr.search(search_word)

    return {:url => image.url_m, 
            :tweet_text => random_tweet.text, 
            :screen_name => random_tweet.screen_name,
            :profile_url => random_tweet.profile_image_url,
            :tweet => random_tweet,
            :image => image}
  end
end
