require "#{ROOT}/app/location"

class Locations < ActiveRecord::Migration[8.0]
  def change
    create_table :locations do |t|
      t.integer :location_type, default: App::Location::DEFAULT_TYPE
      t.references :parent
    end
  end
end
