class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.string :softwarename

      t.timestamps
    end
  end
end
