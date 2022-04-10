class StatsController < ApplicationController
  require 'open-uri'
  require 'nokogiri'

  def suburbresults
    @state = params[:state]
    @suburb = params[:suburb]
    @postode = params[:postcode]

    doc = Nokogiri::HTML(open("https://flatmates.com.au/value-my-room/#{@suburb}-#{@postcode}"))
    @headline = doc.css('body')
  end


  def suburbstats
  end


end


# body > div.cdiv > section.b_0cz > div > div > div > div > div > div.b-suburbprofilepage > div.b-suburbprofilepage__stat > div > table > tbody > tr:nth-child(1) > td:nth-child(3)