class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
		t.string :name
		t.string :base_unit
		t.string :set_unit
		t.string :ingredient_type
		t.integer :base_set_quantity
		t.float :base_set_price
		t.boolean :in_season
      	t.timestamps
    end
  end
end
