class RenameWebhookToWebRequest < ActiveRecord::Migration
  def up
    rename_column :agents, :last_webhook_at, :last_web_request_at
  end

  def down
    rename_column :agents, :last_web_request_at, :last_webhook_at
  end
end
