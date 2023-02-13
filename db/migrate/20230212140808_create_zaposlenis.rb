class CreateZaposlenis < ActiveRecord::Migration[7.0]
  def change
    create_table :zaposlenis do |t|
      t.string :ime
      t.string :prezime
      t.string :zanimanje
      t.string :email
      t.string :telefon

      t.timestamps
    end
  end
end
