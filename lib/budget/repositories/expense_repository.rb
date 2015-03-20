class ExpenseRepository
  include Lotus::Repository

  def self.find_by_category_id(id)
    query do 
      where(category_id: id)
    end
  end
end
