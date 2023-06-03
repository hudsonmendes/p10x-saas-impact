class Manager < ApplicationRecord
  belongs_to :manager, :class_name => Person, :foreign_key => :manager_id
  belongs_to :managed, :class_name => Person, :foreign_key => :managed_id
end
