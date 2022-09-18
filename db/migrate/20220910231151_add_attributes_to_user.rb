class AddAttributesToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :matric_number, :string
    add_column :users, :level, :string
  end
end
