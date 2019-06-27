class CreateTestCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :test_categories do |t|
    	  t.string :name, null: false
    	  t.string :description
      	t.timestamps
    end
  end
end
