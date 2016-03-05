class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
		t.string :name
    	t.string :lastname
    	t.date :date_of_birth
      	t.timestamps null: false
    end
    add_column  :users, :person_id, :integer
  end
end
