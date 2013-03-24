class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :title
      t.integer :master
      t.text :description
      t.datetime :start
      t.datetime :end
      t.datetime :application_period
      t.integer :total_work
      t.integer :state

      t.timestamps
    end
  end
end
