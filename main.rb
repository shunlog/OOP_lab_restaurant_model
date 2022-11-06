#!/usr/bin/env ruby

require_relative 'model/Model'

model = Model.new(cooks_count: ENV['COOKS_COUNT'].to_i,
                  waiters_count: ENV['WAITERS_COUNT'].to_i,
                  tables_count: ENV['TABLES_COUNT'].to_i,
                  initial_rating: ENV['INITIAL_RATING'].to_f,
                  initial_ratings_count: ENV['INITIAL_RATINGS_COUNT'].to_i,
                  initial_popularity: ENV['INITIAL_POPULARITY'].to_i,
                  cook_salary: ENV['COOK_SALARY'].to_f,
                  show_stats: ENV['SHOW_STATS']=='0' ? false : true)

10.times do
  model.run_a_day
end
puts model.json_daily_metrics