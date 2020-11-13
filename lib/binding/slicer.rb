class Binding
  module Slicer
    module Mixin
      def slice(*symbols, **additionals)
        hash = {}
        symbols.each do |name|
          hash[name] = local_variable_get(name)
        end
        hash.merge(additionals)
      end

      alias :"[]" :slice
    end

    refine Binding do
      include Binding::Slicer::Mixin
    end
  end

  module SSlicer
    module Mixin
      alias :_ :binding
    end

    refine Binding do
      include Binding::Slicer::Mixin
    end
    refine Kernel do
      include Binding::SSlicer::Mixin
    end
  end
end
