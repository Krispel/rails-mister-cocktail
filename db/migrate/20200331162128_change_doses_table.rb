class ChangeDosesTable < ActiveRecord::Migration[5.2]
  def change
    remove_reference :doses, :dose
    add_reference :doses, :ingredient, foreign_key: true
  end
end
