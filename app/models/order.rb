class Order < ApplicationRecord
  default_scope { order(:id) }

  belongs_to :user
  has_many :items
end
