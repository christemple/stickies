class Note
  include MongoMapper::Document

  key :owner, String
  key :text, String

  validates :owner, presence: true
  validates :text,  presence: true

end
