require 'celluloid/opm/serialization/binary'
require 'celluloid/opm/serialization/json'

module Celluloid
  module OPM
    module Serialization
      BUILT_IN_TYPES = {
        binary: Binary,
        json:   JSON
      }

      def self.default
        JSON
      end
    end
  end
end
