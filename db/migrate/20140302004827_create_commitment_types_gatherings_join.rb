class CreateCommitmentTypesGatheringsJoin < ActiveRecord::Migration
  def change
    create_table :commitment_types_gatherings_joins do |t|
    	t.integer "commitment_type_id"
    	t.integer "gathering_id"
    end
  end
end