class Post < ActiveRecord::Base
  has_many :post_attachment_files, dependent: :destroy
  has_many :attachment_files, through: :post_attachment_files, dependent: :destroy
end