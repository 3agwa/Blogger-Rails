class TagsController < ApplicationController

def show
  @tag = Tag.find(params[:id])
end

def index
  @tag = Tag.all
end

def destroy
  @tag = Tag.find(params[:id])
  flash.notice = "Tag '#{@tag.name}' Destroyed!"
  redirect_to "http://localhost:3000/tags"
  @tag.destroy
end

end
