class AddNameToDelatation < ActiveRecord::Migration
  def change
    add_column :delatations, :name, :string
  end
end
