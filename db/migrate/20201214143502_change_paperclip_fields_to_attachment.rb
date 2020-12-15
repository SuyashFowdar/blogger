class ChangePaperclipFieldsToAttachment < ActiveRecord::Migration[6.0]
  def change
    add_column :attachments, :image_file_name,    :string
    add_column :attachments, :image_content_type, :string
    add_column :attachments, :image_file_size,    :integer
    add_column :attachments, :image_updated_at,   :datetime
    remove_column :articles, :image_file_name
    remove_column :articles, :image_content_type
    remove_column :articles, :image_file_size
    remove_column :articles, :image_updated_at
  end
end
