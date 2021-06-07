class Actress < ApplicationRecord

  has_many :clips
  has_many :feature_actresses
  has_attached_file :image_path

  def full_name
    "#{first_name} #{last_name}"
  end

  #scopes
  scope :newest, lambda {order("created_at DESC")}

  validates_attachment :image_path,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }



end
