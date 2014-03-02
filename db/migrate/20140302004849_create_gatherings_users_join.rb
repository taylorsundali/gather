class CreateGatheringsUsersJoin < ActiveRecord::Migration
  def change
    create_table :gatherings_users_joins do |t|
    	t.integer "gathering_id"
    	t.integer "user_id"
    	t.string "user_type"
    end
  end
end
