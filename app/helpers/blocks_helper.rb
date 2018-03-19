module BlocksHelper
=begin
  def idenf_num(article_id)
    max = Block.maximum("num")
    if(max)
      return max+1
    else
      return 1
    end
  end
=end
end
