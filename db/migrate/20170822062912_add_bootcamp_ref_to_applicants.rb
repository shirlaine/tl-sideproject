class AddBootcampRefToApplicants < ActiveRecord::Migration[5.1]
  def change
    add_reference :applicants, :bootcamp, foreign_key: true, index: true
  end
end
