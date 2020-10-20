class PostAttachmentFile < ActiveRecord::Base
  belongs_to :post
  belongs_to :attachment_file
end