class Clip < ApplicationRecord

  belongs_to :actress
  has_many :feature_clips
 
  has_attached_file :image_url
  #has_attached_file :clip_src

  scope :newest, lambda {order("created_at DESC")}

  validates_attachment :image_url,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  #validates_attachment :clip_src,
  #                  content_type: { content_type: ["video/mp4"] }



end
