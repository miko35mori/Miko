class GroupsController < ApplicationController

    def index
        @groups = Group.all
    end

    def new
        @group = Group.new
      end
    
      def create
        group = Group.new(group_params)
        if group.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

        def show
          @group = Group.find(params[:id])
          @messages = @group.messages
          @message = Message.new
        end
    
      private
      def group_params
        params.require(:group).permit(:group_name, :address, :scale, :animal, :about, :image)
      end
end
