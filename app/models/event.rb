class Event < ActiveRecord::Base
  has_many :questions, -> { order 'count desc' }, :dependent => :destroy

  def locked?
    locked == true
  end
end
