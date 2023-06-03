class Metric < ApplicationRecord
  enum data_type: [:number, :boolean]
end
