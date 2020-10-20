class TodoUserAttachmentFile < ApplicationRecord
  belongs_to :todo
  belongs_to :user_attachment_file
end
