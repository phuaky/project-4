class MainController < ApplicationController
  def home
    @fishes = Fish.all
  end

end
