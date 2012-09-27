class Ownership < ActiveRecord::Base
  attr_accessible :created_at, :product_id, :user_id
  belongs_to :user
  belongs_to :product
end
