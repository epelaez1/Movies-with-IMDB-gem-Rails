class CreateCastMembers < ActiveRecord::Migration
  def change
    create_table :cast_members do |t|
      t.string :name
      t.timestamps
    end
  end
end
