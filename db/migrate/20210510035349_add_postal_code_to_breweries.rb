class AddPostalCodeToBreweries < ActiveRecord::Migration[6.1]
  def change
    add_column :breweries, :postal_code, :integer
  end
end
