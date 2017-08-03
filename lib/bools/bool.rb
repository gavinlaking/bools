module Bools
  class Bool
    def initialize(model, name, value)
      @model = model
      @name = name
      @value = value
    end

    def define
      Define.method(model, name, value)
    end

    private

    attr_reader :model, :name, :value

    class Define
      def self.method(model, name, value)
        model.class_eval { define_method(name) { !!(value) } }
      end
    end
  end
end
