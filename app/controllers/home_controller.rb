class HomeController < ApplicationController
    layout "home"

  def index
    #Finding feature actress
    @feature_actress = FeatureActress.order('created_at').last
    @actress = Actress.find_by_id(@feature_actress.actress_id)
    #Finding feature clip
    @feature_clip = FeatureClip.order('created_at').last
    @clip = Clip.find_by_id(@feature_clip.clip_id)

    @latest_clips = Clip.last(10)
  end

  def browse_ac
  end

  def browse_cl
  end

  def clip
      @clip = Clip.find(params[:id])
  end

  def actress
  end
end
