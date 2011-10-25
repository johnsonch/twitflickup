Feature: Twitflickup searches twitter and flicker

  Scenario: Search twitter for fish and display tweet
    Given I am on the twitflickup homepage
    Then I should see a tweet with the word "fish" in it

  Scenario: Search flickr for an image
    Given I am on the twitflickup homepage
    Then I should seen an image from Flickr
