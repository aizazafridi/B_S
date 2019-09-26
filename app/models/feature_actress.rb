class FeatureActress < ApplicationRecord
    belongs_to :actress
    
    #scopes
    scope :newest, lambda {order("created_at DESC")}
    
end
