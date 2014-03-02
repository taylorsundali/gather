class CreateCommitmentTypes < ActiveRecord::Migration
  def change
    create_table :commitment_types do |t|
    	t.string "type"   # Either 'Uniform' or 'Multiple'
      	t.string "commitment_item"
      	t.integer "num_people"
      	t.timestamps
    end
  end
end
