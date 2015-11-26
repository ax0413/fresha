class Loo < ActiveRecord::Base
    belongs_to :college
    belongs_to :building
    has_many:comments
  def bok
    total = 0
    comments.each do |c|
      total += c.bok
    end
    if comments.count == 0
      0
    else
      total.to_f / comments.count
    end
  end
  def chung
    total = 0
    comments.each do |c|
      total += c.chung
    end
    if comments.count == 0
      0
    else
      total.to_f / comments.count
    end
  end
  def bun
    total = 0
    comments.each do |c|
      total += c.bun
    end
    if comments.count == 0
      0
    else
      total.to_f / comments.count
    end
  end
  
    

end
