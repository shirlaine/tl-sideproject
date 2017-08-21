class AddColumnsToBootcamps < ActiveRecord::Migration[5.1]
  def change
    add_column :bootcamps, :description, :text
    add_column :bootcamps, :closingdate, :date
  end
end
