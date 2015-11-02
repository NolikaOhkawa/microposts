class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps null: false

      # ﾕﾆｰｸｲﾝﾃﾞｯｸｽを追加し、emailが他と異なるように
      t.index :email, unique: true 
    end
  end
end
