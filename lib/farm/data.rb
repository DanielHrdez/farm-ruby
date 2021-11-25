module Farm
  class Data
		attr_accessor :id, :name, :type, :description

    def initialize(id = 0, name = "", type = "", description = "")
      @id = id
			@name = name
			@type = type
			@description = description
    end

    def to_s
      "ID: #{@id}\nName: #{@name}\nType: #{@type}\nDescription: #{@description}"
    end
  end
end
