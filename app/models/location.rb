class Location < ApplicationRecord
  validates :name, :query, :user_id, presence: true
  belongs_to :user
end
