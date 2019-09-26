class FeatureClipsController < InheritedResources::Base

  private

    def feature_clip_params
      params.require(:feature_clip).permit(:description)
    end

end
