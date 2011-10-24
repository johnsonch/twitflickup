class WelcomeController < ApplicationController
  def index
    @mashup = Mashup.create 
  end
end
