class CreateLoggedIps < ActiveRecord::Migration[7.0]
  def change
    create_table :logged_ips do |t|
      t.string :ip_address, null: false

      t.timestamps
    end
  end
end
