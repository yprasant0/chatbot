class RemoveTelegramDFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :telegram_id, :string
    remove_column :users, :last_name, :string
    remove_column :users, :bot_command_data, :jsonb
  end
end
