class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    #shows a post
    def show 
        @post = Post.find(params[:id])
    end
    #shows new post
    def new
        @post = Post.new
    end
    #edits a post
    def edit
        @post = Post.find(params[:id])
    end

    #updates a blog
    def update
        @post = Post.find(params[:id])

        if(@post.update(post_params))
            redirect_to @post
        else
           render 'edit' 
        end
    end

    #creates a blog
    def create

        #shows based submited data in post form
        #render plain:params[:post].inspect
        @post = Post.new(post_params)
        if(@post.save)
            redirect_to @post
        else
           render 'new' 
        end
    end

    #deletes and destroys a post
    def destroy
        @post  = Post.find(params[:id])
        @post.destroy
        
        redirect_to posts_path
        
    end

    private def post_params
    params.require(:post).permit(:title, :body)
    end



end

