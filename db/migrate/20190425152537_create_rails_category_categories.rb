class CreateRailsCategoryCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :rails_category_categories do |t|
      t.string :name
      t.string :description
      t.references :parent, index: true

      t.timestamps
    end
  end
end
