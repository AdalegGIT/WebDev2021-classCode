class CommentsController < ApplicationController
    def create
        @photo = Photo.find(params[:photo_id])
        # @comment = Comment.create(name: params[:comment][:name],
        #                         message: params[:comment][:message],
        #                         photo_id: @photo.id)
        @comment = Comment.new(comment_params)
        @comment.photo = @photo #linking the comment with photo
        if @comment.save
        redirect_to photo_url(@photo)
        else
        render :new
        end
    end

    def new
        @photo = Photo.find(params[:photo_id]) #define 
        @comment = Comment.new
    end

    private
    def comment_params
        params.require(:comment).permit(:name, :message)
    end

end
