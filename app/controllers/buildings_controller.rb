class BuildingsController < ApplicationController
  def search
    @search = Building.where("bname LIKE ?", "#{params[:search]}")
  end
  
  def show
    @building = Building.find_by(slug: params[:id])
  end
  
  def ev
    if params[:msg].length==0
      msg='내용없음'
    else
      msg=params[:msg]
    end
    if params[:floor].length==0
      fl='?'
    else
      fl=params[:floor]
    end
    Comment.create(building_id: params[:id], bidet: params[:bidet], bok: params[:rating].to_i, chung: params[:rating2].to_i, bun: params[:rating3].to_i, comment: msg, floor: fl)
    @building = Building.find(params[:id])
    @building.avg=(@building.bok+@building.bun+@building.chung)/3
    @building.save
    redirect_to :action => "show", :id => @building.slug
  end
  
  def rating
    @building = Building.find(params[:id])
  end
  
  def rank
    @rank = Building.order(:avg).reverse.take(10)
  end

end
