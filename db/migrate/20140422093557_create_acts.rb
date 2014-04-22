class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.references :concert, index: true
      t.references :band, index: true

      t.timestamps
    end
  end
end
