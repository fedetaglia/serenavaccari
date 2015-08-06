module Options
  class Categories < Base
    @options = ['residential', 'commercial', 'landscape', 'experimental']

    def initialize(option)
      @option = option
    end
  end
end
