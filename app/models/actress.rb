class Actress < ApplicationRecord

  has_many :clips
  has_many :feature_actresses
  has_attached_file :image_path

  #scopes
  scope :newest, lambda {order("created_at DESC")}

  validates_attachment :image_path,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
