class CommentsController < ApplicationController
    before_action :set_message

    def create  
      @comment = @message.comments.build(comment_params)
      @comment.user_id = current_user.id
    
      if @comment.save
        flash[:success] = "You commented the hell out of that message!"
        redirect_to :back
      else
        flash[:alert] = "Check the comment form, something went horribly wrong."
        render root_path
      end
    end
    
    def destroy  
      @comment = @message.comments.find(params[:id])
    
      @comment.destroy
      flash[:success] = "Comment deleted :("
      redirect_to messages_path
    end
    
    private
    
    def comment_params  
      params.require(:comment).permit(:content)
    end
    
    def set_message 
      @message = Message.find(params[:message_id])
    end  
end
