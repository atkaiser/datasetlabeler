class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :name
      t.belongs_to :user
      t.belongs_to :project

      t.timestamps
    end
  end
end
