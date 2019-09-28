class FeatureClipsController < InheritedResources::Base
    
    layout 'admin'
    
    def index
        @feature_clips = FeatureClip.paginate(:page => params[:page], :per_page => 20).newest
    end
    
    def show
        @feature_clip = FeatureClip.find(params[:id])
        @clip = Clip.find_by_id(@feature_clip.clip_id)
    end
    
    def new
        @feature = FeatureClip.new
    end
    
    def create
        @feature = FeatureClip.new(feature_clip_params)
        if @feature.save
            redirect_to(feature_clips_path)
        else
            render('new')
        end
    end
    

  private

    def feature_clip_params
      params.require(:feature_clip).permit(:description, :clip_id)
    end

end
