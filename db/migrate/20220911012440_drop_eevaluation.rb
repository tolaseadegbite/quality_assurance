class DropEevaluation < ActiveRecord::Migration[7.0]
  def change
    drop_table :eevaluations
  end
end
