mount_uploader :file, FileUploader
after_destroy :destory_intermediate

has_many :user_attachment_files
has_many :users, through: :user_attachment_files

has_many :post_attachment_files
has_many :posts, through: :post_attachment_files

def destory_intermediate
  user_attachment_files.destroy if user_attachment_files.present?
  post_attachment_files.destroy if post_attachment_files.present?
end