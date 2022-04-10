class CalculatorController < ApplicationController

  def pastcalculator
  end

  def pastresults
    @year = params[:yearSold].to_i
    @current_price = params[:currentSalePrice].to_i
    @past_price = params[:lastSalePrice].to_i
    @difference = @current_price - @past_price
    @growth_total = @difference / @past_price.to_f * 100
    @years_difference = Time.new.year - @year
    @average_annual_growth_percentage = (@growth_total / @years_difference).round(2)
  end

  def futurecalculator
  end

  def futureresults
    @property_value = params[:propertyValue].to_i
    @growth_rate = params[:growthRate].to_i
    @years_display = params[:yearsToDisplay].to_i
    @growth_percentage = @growth_rate.to_f / 100
    @growth_amount = @property_value * @growth_percentage
    @growth_int = @growth_percentage + 1
    @current_year = Time.new.year
    @count = 0
  end

  def yieldcalculator
  end

  def yieldresults
    @weekly_rent = params[:weeklyRent].to_i
    @monthly_rent = params[:monthlyRent].to_i
    @property_price = params[:propertyPrice].to_i
    @annual_rent = (@weekly_rent / 7) * 365
    @y = @annual_rent / @property_price.to_f * 100
  end


end
