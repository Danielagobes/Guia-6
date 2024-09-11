class CreateEsts < ActiveRecord::Migration[6.1]
  def change
    create_table :ests do |t|
      t.string :nombres
      t.string :apellidos
      t.string :carrera
      t.string :carnet
      t.date :nacimiento
      t.integer :celular

      t.timestamps
    end
  end
end
