class Metric < ApplicationRecord
  enum DataTypes: [:number, :boolean]
end
