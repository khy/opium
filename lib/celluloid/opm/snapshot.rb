module Celluloid
  module OPM
    class Snapshot
      def initialize(object)
        @object = object.dup
      end
    end
  end
end
