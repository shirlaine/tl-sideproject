class CreatePostUserJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :posts, :users do |t|


      t.references :post, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
