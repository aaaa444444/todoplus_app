# Userモデル
create_table "users", force: :cascade, options: do |t|
  t.datetime "created_at",  null: false
  t.datetime "updated_at",  null: false
end

# User_attachment_fileモデル
create_table "user_attachment_files", force: :cascade, options: do |t|
  t.integer  "user_id",            limit: 4, null: false          # ポイント
  t.integer  "attachment_file_id", limit: 4, null: false          # ポイント
end

# Postモデル
create_table "posts", force: :cascade, options: do |t|
  t.datetime "created_at",  null: false
  t.datetime "updated_at",  null: false
end

# Post_attachment_fileモデル
create_table "post_attachment_files", force: :cascade, options: do |t|
  t.integer  "post_id",            limit: 4, null: false          # ポイント
  t.integer  "attachment_file_id", limit: 4, null: false          # ポイント
end

# Attachment_fileモデル
create_table "attachment_files", force: :cascade, options: do |t|
  t.string   "file",              limit: 255                      # ポイント
  t.string   "original_filename", limit: 255                      # ポイント
  t.datetime "created_at",                    null: false
  t.datetime "updated_at",                    null: false
end