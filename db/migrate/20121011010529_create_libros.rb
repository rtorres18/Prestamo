class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :titulo
      t.date :fechaprestamo
      t.integer :cantidaddias
      t.references :usuario

      t.timestamps
    end
    add_index :libros, :usuario_id
  end
end
