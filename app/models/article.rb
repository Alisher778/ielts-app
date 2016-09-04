class Article < ActiveRecord::Base
  has_attached_file :photo, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  :storage => :s3,
  :bucket => 'ieltsalex',
  :path => ":env_folder/:attachment/:id/:style/:filename.:extension"

end

