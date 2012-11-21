module Celluloid
  module OPM
    module Serialization
      module Binary
        def self.dump(object)
          Marshal.dump(object)
        end

        def self.load(object)
          Marshal.load(object)
        end
      end
    end
  end
end
