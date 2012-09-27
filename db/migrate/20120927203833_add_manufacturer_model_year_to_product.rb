class AddManufacturerModelYearToProduct < ActiveRecord::Migration
  def change
    add_column :products, :manufacturer, :string
    add_column :products, :model, :string
    add_column :products, :year, :integer
  end
end
