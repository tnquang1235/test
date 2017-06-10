class CreateTinnhans < ActiveRecord::Migration
  def change
    create_table :tinnhans do |t|
      t.text :content
      t.timestamps
    end
  end
end
