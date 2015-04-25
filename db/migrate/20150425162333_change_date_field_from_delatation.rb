class ChangeDateFieldFromDelatation < ActiveRecord::Migration
  def change
    rename_column :delatations, :date, :occurrence_date
  end
end
