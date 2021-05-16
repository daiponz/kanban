class ListController < ApplicationController
    
  before_action :set_list, only: %i(edit update destroy)
  
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to :root #root_pathにリダイレクト
    else
      render action: :new #リスト作成画面(new)に遷移
    end
  end
    
  def edit
  end
    
  def update
    if @list.update(list_params)
      redirect_to :root
    else
      render action: :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to :root
  end

  private #外部から呼び出し不可
    def list_params
      params.require(:list).permit(:title).merge(user: current_user)
    end

    def set_list
      @list = List.find_by(id: params[:id])
    end
end
