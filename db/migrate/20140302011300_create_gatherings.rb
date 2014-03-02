class CreateGatherings < ActiveRecord::Migration
  def up
    create_table :gatherings do |t|
    	t.string "name", :limit => 100
    	t.date "event_date"
    	t.time "event_time"
    	t.date "ante_date"
    	t.time "ante_time"
    	t.string "location", :limit => 100
    	t.string "type"
    	t.text "description"
    	t.integer "max_attendees"
    	t.integer "min_attendees"
	    t.timestamps
    end
  end
  def down
  	drop_table :gatherings 
  end
end