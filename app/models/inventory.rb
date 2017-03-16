class Inventory < ApplicationRecord
  self.table_name = 'inventory'

  belongs_to :product, foreign_key: :prod_id
end
