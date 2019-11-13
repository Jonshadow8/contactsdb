class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :Name
      t.string :Age
      t.string :Phone
      t.string :email

      t.timestamps
    end
  end
end
