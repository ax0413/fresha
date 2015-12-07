class LoosController < ApplicationController

  def index
    @loos = Loo.all
  end

  def search
    @search = Loo.where("bname LIKE ?", "#{params[:search]}")
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
    if params[:floor].length==0
      floor='?'
    else
      floor=params[:floor]
    end
    Comment.create(loo_id: params[:id], bidet: params[:bidet], bok: params[:rating].to_i, chung: params[:rating2].to_i, bun: params[:rating3].to_i, comment: msg, floor: floor)
    @loo = Loo.find(params[:id])
    @loo.avg=(@loo.bok+@loo.bun+@loo.chung)/3
    @loo.save
    redirect_to :action => "show", :id => params[:id]
  end
  
  def rating
    @loo = Loo.find(params[:id])
  end
  
  def rank
    @rank = Loo.order(:avg).reverse.take(10)
  end

end
