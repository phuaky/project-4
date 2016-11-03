class MainController < ApplicationController
  def home
    @fishes = Fish.all
    # # loop each fish
    # fish_ids = []
    #
    # @fishes.each do |fish|
    #   # name_of_fish = fish.english
    #   fish_ids.push(fish.id)
    #   # fish_id = fish.id
    #   end
    #
    # @all_stocks = AllSeafoodStock.where(fish_id: fish_ids) #returns array of items where fish_id matches
    # # loop through name_of_fish, extract the volume
    # volume_arr = []
    # # find all the fish ids, extract their volume and add it to total volume
    # name_of_fish.each do |fish|
    #   volume_arr.push(fish.volume)
    #
    # end
    # @threadfin

  end #home

  def why
  end
end
