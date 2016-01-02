class Record < ActiveRecord::Base
  # relation
  belongs_to :category
  belongs_to :user

  # validation
  validates_presence_of :payment, :category_id
  validates_numericality_of :payment, :greater_than_or_equal_to => 0
  validates :card, inclusion: { in: [true, false] }
end
