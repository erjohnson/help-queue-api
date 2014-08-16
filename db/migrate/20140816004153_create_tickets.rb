class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.column :student, :string
      t.column :open, :boolean
      t.column :project_id, :int
      t.column :question, :string
        
      t.timestamps
    end
  end
end
