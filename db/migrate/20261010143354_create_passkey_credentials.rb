class CreatePasskeyCredentials < ActiveRecord::Migration[8.1]
  def change
    create_table :passkey_credentials do |t|
      t.references :user, null: false, foreign_key: true
      t.string :credential_id, null: false
      t.string :string, null: false
      t.text :public_key_pem, null: false
      t.integer :sign_count, null: false, default: 0
      t.string :nickname

      t.timestamps
    end
    add_index :passkey_credentials, :string, unique: true
  end
end
