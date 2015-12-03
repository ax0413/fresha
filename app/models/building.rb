class Building < ActiveRecord::Base
    extend FriendlyId
    friendly_id :bname, use: :slugged
    belongs_to :college
    has_many :comments
    
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

    def normalize_friendly_id(input)
        input.to_s.to_slug.normalize.to_s
    end
end
