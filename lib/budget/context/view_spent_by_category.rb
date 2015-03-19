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
      end

      private

      attr_reader :categories
    end

    private

    attr_reader :categories
  end
end
