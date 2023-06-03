class Person < ApplicationRecord
  belongs_to :role
  has_many :domains, :foreign_key => :owner_id
end
