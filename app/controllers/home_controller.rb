class HomeController < ApplicationController
    layout "home"

  def index
    @feature_actress = FeatureActress.order('created_at').last
    @actress = Actress.find_by_id(@feature_actress.actress_id)
    @feature_clip = FeatureClip.order('created_at').last
    @clip = Clip.find_by_id(@feature_clip.clip_id)
    @latest_clips = Clip.last(18).reverse
  end

  def browse_ac
     @search = params["search"]
     if @search.present?
       @first_name = @search["first_name"]
       @actresses = Actress.paginate(:page => params[:page], :per_page => 20).order(:first_name).where("first_name LIKE ?", "%#{@first_name}%")
     else
     @actresses = Actress.paginate(:page => params[:page], :per_page => 15).order(:first_name)
     end
  end

  def browse_cl
       @clips = Clip.paginate(:page => params[:page], :per_page => 20).order('created_at desc')
  end

  def search_cl
      @tag = params[:tag]
      @clips = Clip.paginate(:page => params[:page], :per_page => 20)
      .where("clip_tag1" => @tag)
      .or(Clip.paginate(:page => params[:page], :per_page => 20).where("clip_tag2" => @tag))
      .or(Clip.paginate(:page => params[:page], :per_page => 20).where("clip_tag3" => @tag))
      .or(Clip.paginate(:page => params[:page], :per_page => 20).where("clip_tag4" => @tag))
      .or(Clip.paginate(:page => params[:page], :per_page => 20).where("clip_tag5" => @tag))

  end

  def clip
      @clip = Clip.find(params[:id])
      @actress = Actress.find(@clip.actress_id)
      @suggested_clips = Clip.order("RANDOM()").limit(10)
  end

  def actress
      @actress = Actress.find(params[:id])
      #check if record exist
      if Clip.exists?(:actress_id => @actress.id)
        @clip_exists = true
        @clips = Clip.paginate(:page => params[:page], :per_page => 10).where(:actress_id => @actress.id).order('created_at desc')
        #@clips = Clip.where(:actress_id => @actress.id)
      else
        @clip_exists = false
        @clips = Clip.paginate(:page => params[:page], :per_page => 10).where(:actress_id => @actress.id).order('created_at desc')
      end
  end

  def report_link
      @clip = Clip.find(params[:id])
      @clip.update_attribute(:link_broken,true)
  end

  private

    def clip_params
      params.require(:clip).permit(:link_broken)
    end

end
