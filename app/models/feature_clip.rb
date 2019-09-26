class FeatureClip < ApplicationRecord
    belongs_to :clip
    
     #scopes
    scope :newest, lambda {order("created_at DESC")}
end
