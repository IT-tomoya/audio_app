class AudioPostsController < ApplicationController
  before_action :set_audio_post, only: [:show, :edit, :update, :destroy]

  # GET /audio_posts
  # GET /audio_posts.json
  def index
    @audio_posts = AudioPost.all
  end

  # GET /audio_posts/1
  # GET /audio_posts/1.json
  def show
  end

  # GET /audio_posts/new
  def new
    @audio_post = AudioPost.new
  end

  # GET /audio_posts/1/edit
  def edit
  end

  # POST /audio_posts
  # POST /audio_posts.json
  def create
    @audio_post = AudioPost.new(audio_post_params)

    respond_to do |format|
      if @audio_post.save
        format.html { redirect_to @audio_post, notice: 'Audio post was successfully created.' }
        format.json { render :show, status: :created, location: @audio_post }
      else
        format.html { render :new }
        format.json { render json: @audio_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audio_posts/1
  # PATCH/PUT /audio_posts/1.json
  def update
    respond_to do |format|
      if @audio_post.update(audio_post_params)
        format.html { redirect_to @audio_post, notice: 'Audio post was successfully updated.' }
        format.json { render :show, status: :ok, location: @audio_post }
      else
        format.html { render :edit }
        format.json { render json: @audio_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audio_posts/1
  # DELETE /audio_posts/1.json
  def destroy
    @audio_post.destroy
    respond_to do |format|
      format.html { redirect_to audio_posts_url, notice: 'Audio post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audio_post
      @audio_post = AudioPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audio_post_params
      params.require(:audio_post).permit(:user_name, :content, :created_at, :updated_at, :picture, :audio)
    end
end
