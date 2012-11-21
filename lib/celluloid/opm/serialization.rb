module Celluloid
  module OPM
    module Serialization
      module Binary
        def self.dump(object)
          object
        end

        def self.load(object)
          object
        end
      end

      module JSON
        def self.dump(object)
          object
        end

        def self.load(object)
          object
        end
      end
    end
  end
end
