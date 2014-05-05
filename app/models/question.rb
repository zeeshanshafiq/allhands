class Question < ActiveRecord::Base
  belongs_to :event
  validates :content, presence: true, length: { maximum: 125 }
end
