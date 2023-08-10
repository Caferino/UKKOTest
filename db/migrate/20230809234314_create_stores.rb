class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :codename
      t.string :address
      t.string :phone # Debe ser string. Con integers se pierden los 0s o signos de mas (+)

      t.timestamps
    end
  end
end
