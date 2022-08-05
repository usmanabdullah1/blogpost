class PostLabelsController < ApplicationController
  before_action :set_post_label, only: %i[ show edit update destroy ]

  # GET /post_labels or /post_labels.json
  def index
    @post_labels = PostLabel.all
  end

  # GET /post_labels/1 or /post_labels/1.json
  def show
  end

  # GET /post_labels/new
  def new
    @post_label = PostLabel.new
  end

  # GET /post_labels/1/edit
  def edit
  end

  # POST /post_labels or /post_labels.json
  def create
    @post_label = PostLabel.new(post_label_params)

    respond_to do |format|
      if @post_label.save
        format.html { redirect_to post_label_url(@post_label), notice: "Post label was successfully created." }
        format.json { render :show, status: :created, location: @post_label }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_labels/1 or /post_labels/1.json
  def update
    respond_to do |format|
      if @post_label.update(post_label_params)
        format.html { redirect_to post_label_url(@post_label), notice: "Post label was successfully updated." }
        format.json { render :show, status: :ok, location: @post_label }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_labels/1 or /post_labels/1.json
  def destroy
    @post_label.destroy

    respond_to do |format|
      format.html { redirect_to post_labels_url, notice: "Post label was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_label
      @post_label = PostLabel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_label_params
      params.fetch(:post_label, {})
    end
end
