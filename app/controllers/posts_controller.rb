class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy]
  before_action :authenticate_user!, except: [:index,:show]
  before_action :correct_user, only: [:edit , :update, :destroy]
  # GET /posts or /posts.json
  def index
    @posts = Post.all.order("created_at DESC")
  end

  # GET /posts/1 or /posts/1.json
  def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  def new
    # @post = Post.new
    @post = current_user.post.build
    @labels = Label.all
    puts "Usman here#{@post.user_id}\n"*100
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    # @post = Post.new(post_params)
    @post = current_user.post.build(post_params)
    @post.labels = Label.where(id: params["states"])

    respond_to do |format|
      if @post.save
        
        format.html { redirect_to action: "index", notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  #   def show_image
  #     @user = User.find(params[:id])
  #     send_data @post.avatar, :type => 'image/png',:disposition => 'inline'
  # end
  end
  def correct_user
    @post = current_user.post.find_by(id: params[:id])
    redirect_to posts_path, notice: "Not authorized to edit/delete this post" if @post.nil?
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :body, :time_to_read,:avatar, :user_id)
    end
end
