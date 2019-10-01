class FeatureActressesController < ApplicationController
    
    before_action :authenticate_user!
    
    layout 'admin'
    
    def index
        @feature_actresses = FeatureActress.paginate(:page => params[:page], :per_page => 20).newest
    end
    
    def show
        @feature_actress = FeatureActress.find(params[:id])
        ##@actress = Actress.where(:id => "#{@feature_actress.actress_id}")
        @actress = Actress.find_by_id(@feature_actress.actress_id)
    end
    
    def new
        @feature = FeatureActress.new
    end
    
    def create
        @feature = FeatureActress.new(feature_actress_params)
        if @feature.save
            redirect_to(feature_actresses_path)
        else
            render('new')
        end
    end
    

  private

    def feature_actress_params
      params.require(:feature_actress).permit(:description, :actress_id)
    end

end
