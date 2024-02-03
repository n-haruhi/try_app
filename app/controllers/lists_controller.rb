class ListsController < ApplicationController

  def new
    # listsテーブルに保存されている全てのデータを取得
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list.id), notice: "投稿成功しました。"
    else
      render :new
    end
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to list_path(@list.id), notice: "更新成功しました。"
    else
      render :edit
    end
  end

  def destroy
    list = List.find(params[:id]) # データ（レコード）を1件取得
    list.destroy # データ（レコード）を削除
    redirect_to '/lists' # 投稿一覧へリダイレクト
  end

  # 是より下に記述することでメソッドの呼び出しに制限をかける
  private
  # formから送られたデータがparamsに入り、そのデータの中から:listモデルを指定し、データを絞り込む。
  # requireで絞り込んだ中から保存を許可するカラムを指定
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end

end
