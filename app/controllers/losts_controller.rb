class LostsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def index
        @losts = Lost.all
      end
    
      def new
        @lost = Lost.new
      end
    
      def create
        lost = Lost.new(lost_params)
        lost.user_id = current_user.id
        if lost.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      def show
        @lost = Lost.find(params[:id])
        @comments = @lost.comments
        @comment = Comment.new
      end
    
      def edit
        @lost = Lost.find(params[:id])
      end
    
      def update
        lost = Lost.find(params[:id])
        if lost.update(lost_params)
          redirect_to :action => "show", :id => lost.id
        else
          redirect_to :action => "new"
        end
      end
    
      def top
      end
    
      private
      def lost_params
        params.require(:lost).permit(:body, :animal_name, :genre, :color, :about, :image)
      end
end
