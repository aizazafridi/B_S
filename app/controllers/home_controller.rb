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
     @actresses = Actress.paginate(:page => params[:page], :per_page => 20).order(:first_name)
     #@actresses = Actress.last(20)
  end

  def browse_cl
     @clips = Clip.paginate(:page => params[:page], :per_page => 20).order(:created_at)
  end

  def clip
      @clip = Clip.find(params[:id])
      @suggested_clips = Clip.last(10)
  end

  def actress
      @actress = Actress.find(params[:id])
  end
end
