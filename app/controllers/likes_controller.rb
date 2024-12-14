class LikesController < ApplicationController
  before_action :authenticate_account!

  def save_like
    @like = Like.new(post_id: params[:post_id], account_id: current_account.id)

    respond_to do |format|
      format.json do
        if @like.save
          { success: true }
        else
          { success: true }
        end
      end
    end
  end
end
