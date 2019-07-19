class BlogsController < ApplicationController

  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.all
    @tags = Tag.all
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
    @tags = Tag.all

  end

  # GET /blogs/1/edit
  def edit
    @tags = Tag.all

  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.new(blog_params.except(:tag_id))
    tag_id = blog_params[:tag_id]
    # @blog = Blog.new(blog_params.except(:tag_name))
    @tag = Tag.find(tag_id)
    @blog.tags << @tag


    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }


      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update

    tag_id = blog_params[:tag_id]
    # @blog = Blog.new(blog_params.except(:tag_name))
    @tag = Tag.find(tag_id)
    if(!@blog.tags.exists?(:id => @tag.id))
      @blog.tags << @tag
    end
    puts  "---- taglog---" + @tag.name+ "------"




    respond_to do |format|
      if @blog.update(blog_params.except(:tag_id))
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_blog
    @blog = Blog.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def blog_params
    params.require(:blog).permit(:title, :content, :user_id, :tag_name, :tag_id)
  end

  def tag_params
    params.require(:tag).permit(:tag_name)
  end
end
