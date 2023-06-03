class Okr < ApplicationRecord
  belongs_to :owner, :class_name => 'Person', :foreign_key => :owner_id
  belongs_to :parent_id, :class_name => 'Okr', :foreign_key => :parent_id
  has_many :children, :class_name => 'Okr', :foreign_key => :parent_id
  enum status: [:new, :wip, :done, :aborted]
end
