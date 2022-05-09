class Owner < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :owner_id, :integer, null: false, index: true
    add_column :cat_rental_requests, :requester_id, :integer, null: false, index: true
  end
end
