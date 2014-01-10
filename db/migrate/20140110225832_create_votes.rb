class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :project
      t.belongs_to :category
      t.belongs_to :datum

      t.timestamps
    end
  end
end
