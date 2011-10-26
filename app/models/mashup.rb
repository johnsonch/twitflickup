class Mashup
  def self.create
    tweets = Twitter.search("fish")
    
    if tweets.size > 0
      random_tweet = tweets[rand(tweets.size)]
      search_word = random_tweet.text.split(" ")[3]
      image = Flickr.search(search_word)
      if image
        return {:tweet => random_tweet,
                :image => image}
      else
        return Mashup.create
      end
    else
      return Mashup.create
    end
  end
end
