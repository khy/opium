module Celluloid
  module OPM
    module Serialization
      module JSON
        def self.dump(object)
          Oj.dump(object, mode: :object)
        end

        def self.load(object)
          Oj.load(object, mode: :object)
        end
      end
    end
  end
end
