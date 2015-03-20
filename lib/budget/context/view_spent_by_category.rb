module Context
  class ViewSpentByCategory
    def self.exec
      new.exec
    end

    def initialize(categories = CategoryRepository)
      @categories = CategoryRepository
    end

    def exec
      Presenter.new(categories)
    end

    class Presenter
      def initialize(categories)
        @categories = categories
        @rows = []
      end

      def to_h
        categories.all.inject({"CategoryName" => "SubTotal"}) do |rows, category|
          rows[category.name] = category.expense_subtotal
          rows
        end
      end

      private

      attr_reader :categories
    end

    private

    attr_reader :categories
  end
end
