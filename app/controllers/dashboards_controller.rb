class DashboardsController < ApplicationController
  def index
      
      @coffees_in_months = Coffee.group_by_month(:created_at, last: 12).sum(:price)
      @coffees_by_count = Coffee.group_by_month(:created_at, last: 12).count
      @coffees_by_prom = Coffee.group_by_month(:created_at, last: 12).average(:price)

    


  end
end
