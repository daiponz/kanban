class TopController < ApplicationController


  before_action :set_user, only: %i(edit update)
  # ==========ここから追加する==========
  def index
      @lists = List.where(user: current_user).order("created_at ASC")
  end
    
  def edit
      
  end
    
  def update
    if @user.update(user_params)
      redirect_to :root
    else
      render action: :edit
    end
  end
    
  private #外部から呼び出し不可
    
    def user_params
      params.require(:user).permit(:name)
    end
    
    def set_user
      @user = User.find_by(id: current_user[:id])
    end
    
end
