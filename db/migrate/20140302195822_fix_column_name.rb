class FixColumnName < ActiveRecord::Migration
  def up
  	rename_column :gatherings, :type, :gathering_type
  end

  def down
  	# do nothing for now
  	# rename_column
  end
end
