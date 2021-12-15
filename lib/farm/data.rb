module Farm
  class Data
		attr_accessor :id, :name, :type_farm, :description

    def initialize(id = 0, name = "", type_farm = "", description = "")
      @id = id
			@name = name
			@type_farm = type_farm
			@description = description
    end

    def to_s
      "ID: #{@id}\nName: #{@name}\nType Farm: #{@type_farm}\nDescription: #{@description}"
    end
  end
end
