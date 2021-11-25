module Farm
  class Data
		attr_accessor :id, :name, :type

    def initialize(id, name, type)
      @id = id
			@name = name
			@type = type
    end
  end
end
