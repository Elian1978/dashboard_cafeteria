class DashboardsController < ApplicationController
  def index
      
      @coffees_in_months = Coffee.group_by_month(:created_at, last: 12).sum(:price)
      @coffees_by_count = Coffee.group_by_month(:created_at, last: 12).count
      @coffees_by_prom = Coffee.group_by_month(:created_at, last: 12).average(:price)
      @coffees_by_origin_year = Coffee.where(created_at: 11.months.ago..Date.today).group(:origin).count
      @coffees_by_origin_6month = Coffee.where(created_at: 5.months.ago..Date.today).group(:origin).count
      @coffees_by_origin_last3month = Coffee.where(created_at: 2.months.ago..Date.today).group(:origin).count
      @coffees_by_origin_lastmonth = Coffee.where(created_at: 1.months.ago..Date.today).group(:origin).count
      @coffees_by_blend_year = Coffee.where(created_at: 11.months.ago..Date.today).group(:blend).count
      @coffees_by_blend_6month = Coffee.where(created_at: 5.months.ago..Date.today).group(:blend).count
      @coffees_by_blend_last3month = Coffee.where(created_at: 2.months.ago..Date.today).group(:blend).count
      @coffees_by_blend_lastmonth = Coffee.where(created_at: 1.months.ago..Date.today).group(:blend).count
  end
end
