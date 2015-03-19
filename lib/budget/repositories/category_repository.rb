class CategoryRepository
  include Lotus::Repository

  def self.find_by_name(category_name)
    query do 
      where(name: category_name)
    end.first
  end
end
