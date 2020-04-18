class HomeController < ApplicationController
    layout "home"

  def index
    #Finding feature actress
    @feature_actress = FeatureActress.order('created_at').last
    @actress = Actress.find_by_id(@feature_actress.actress_id)
    #Finding feature clip
    @feature_clip = FeatureClip.order('created_at').last
    @clip = Clip.find_by_id(@feature_clip.clip_id)

    #@latest_clips = Clip.last(10)
    #@latest_clips = Clip.order("created_at desc")
    @latest_clips = Clip.last(18).reverse
  end

  def browse_ac
     #@actresses = Actress.paginate(:page => params[:page], :per_page => 20).order(:first_name)
     @search = params["search"]
     if @search.present?
       @first_name = @search["first_name"]
       ##@actresses = Actress.where(first_name: @first_name)
       ##@actresses = Actress.paginate(:page => params[:page], :per_page => 20).order(:first_name).where(first_name: @first_name)
       @actresses = Actress.paginate(:page => params[:page], :per_page => 20).order(:first_name).where("first_name LIKE ?", "%#{@first_name}%")
     else
     @actresses = Actress.paginate(:page => params[:page], :per_page => 15).order(:first_name)
     end
  end

  def browse_cl
     @clips = Clip.paginate(:page => params[:page], :per_page => 20).order(:created_at)
  end

  def clip
      @clip = Clip.find(params[:id])
      @actress = Actress.find(@clip.actress_id)
      #@suggested_clips = Clip.last(10)
      @suggested_clips = Clip.order("RAND()").limit(10)
  end

  def actress
      @actress = Actress.find(params[:id])
      @clips = Clip.where(:actress_id => @actress.id)
  end
end
