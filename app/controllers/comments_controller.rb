class CommentsController < ApplicationController
    
    def new
        movie_id = params[:movie_id] 
        m = Movie.find(movie_id)
        @comment = Comment.new
        @comment.movie_id = m.id
        @comment.user_id = current_user.id
    end
    
    def create
        @comment = Comment.new(comment_params)

        respond_to do |format|
          if @comment.save
            format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
            format.json { render :show, status: :created, location: @comment }
          else
            format.html { render :new }
            format.json { render json: @comment.errors, status: :unprocessable_entity }
          end
        end
    end
    
    def add
       @movie = Movie.find(params[:movie])
    end
    
    private
        def comment_params
          params.require(:comment).permit(:comment)
        end
end
