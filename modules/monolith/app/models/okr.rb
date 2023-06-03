class Okr < ApplicationRecord
  belongs_to :owner, :class_name => 'Person', :foreign_key => :owner_id
  belongs_to :parent_id, :class_name => 'Okr', :foreign_key => :parent_id, :optional => true
  has_many :children, :class_name => 'Okr', :foreign_key => :parent_id
  enum States: [:pending, :wip, :done, :aborted]

  def hierarchical_sequence
    if parent_id
      "#{parent_id.hierarchical_sequence}.#{self.id}"
    else
      "#{self.id}"
    end
  end
end
