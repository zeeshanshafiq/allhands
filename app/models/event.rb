class Event < ActiveRecord::Base
  has_many :questions, -> { order 'count desc' }, :dependent => :destroy
  
end
