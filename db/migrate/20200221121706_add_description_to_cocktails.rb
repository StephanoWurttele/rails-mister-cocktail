class AddDescriptionToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :desc, :string
  end
end
