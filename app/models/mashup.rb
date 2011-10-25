class Mashup
  def self.create
    tweets = Twitter.search("fish")
    random_tweet = tweets[rand(tweets.size)]
    search_word = random_tweet.text.split(" ")[3]
    image = Flickr.search(search_word)


    return {:tweet => random_tweet,
            :image => image}
  end
end
