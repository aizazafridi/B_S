class FeatureActressesController < InheritedResources::Base

  private

    def feature_actress_params
      params.require(:feature_actress).permit(:description)
    end

end
