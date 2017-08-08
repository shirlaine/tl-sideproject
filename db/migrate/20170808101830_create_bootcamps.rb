class CreateBootcamps < ActiveRecord::Migration[5.1]
  def change
    create_table :bootcamps do |t|
    	t.string :name
    	t.date :startdate
    	t.date :enddate
    end
  end
end
