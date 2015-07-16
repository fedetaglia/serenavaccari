module Options
  class Categories < Base
    @options = ['works','competitions','workshops','studies']

    def initialize(option)
      @option = option
    end
  end
end
