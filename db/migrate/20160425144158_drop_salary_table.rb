class DropSalaryTable < ActiveRecord::Migration
  def change
    drop_table :salaries
  end
end
