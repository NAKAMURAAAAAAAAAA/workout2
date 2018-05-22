class RelationshipsController < ApplicationController
   
   def create
    @relationship = Relationship.new(follower_id: params[:id],
    following_id: @current_user.id)
    @relationship.save
    redirect_to("/users/#{params[:id]}")
   end
   
   def destroy
    @relationship = Relationship.find_by(follower_id: params[:id],
    following_id: @current_user.id)
    @relationship.destroy
    redirect_to("/users/#{params[:id]}")
   end
  
end
