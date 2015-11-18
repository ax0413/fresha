class LooController < ApplicationController

  def index
    @loos = Loo.all
  end

  def show
    @loo = Loo.find(params[:id])
  end
  
  def ev
    if params[:msg].length==0
      msg='내용없음'
    else
      msg=params[:msg]
    end
    Comment.create(loo_id: params[:id], bidet: params[:bidet], bok: params[:rating].to_i, chung: params[:rating2].to_i, bun: params[:rating3].to_i, comment: msg)
    redirect_to :action => "detail", :id => params[:id]
  end
  
  def rating
    @loo = Loo.find(params[:id])
  end

end
