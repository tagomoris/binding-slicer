class Binding
  module Slicer
    module Mixin
      def slice(*symbols)
        hash = {}
        symbols.each do |name|
          hash[name] = local_variable_get(name)
        end
        hash
      end

      alias :"[]" :slice
    end

    refine Binding do
      include Binding::Slicer::Mixin
    end
  end
end
