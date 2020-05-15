class CreateOrganisms < ActiveRecord::Migration[5.1]
  def change
    create_table :organisms do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end

