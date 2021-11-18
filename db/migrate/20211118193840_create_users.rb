class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_lastname
      t.string :user_mail
      t.string :user_notificationPreference
    end
  end
end
