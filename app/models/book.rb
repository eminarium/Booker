class Book < ApplicationRecord
  belongs_to :author
  belongs_to :user

  has_attached_file :image #, styles: { medium: ["400x600>", :jpg] }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/  
end
