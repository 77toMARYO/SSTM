class Contest < ActiveRecord::Base
  attr_accessible :application_period, :description, :end, :master, :start, :state, :title, :total_work
end
