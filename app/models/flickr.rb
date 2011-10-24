class Flickr
  def self.search(word) 
    results = flickr.photos.search( :text => word, 
                                   :license => "4,2,1,5,7", 
                                   :extras =>"url_m,path_alias", 
                                   :sort => "interestingness-desc, relevance")
    results[rand(results.size)]
  end
end
