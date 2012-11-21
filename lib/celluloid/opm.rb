require 'celluloid/opm/version'

require 'celluloid'

require 'celluloid/opm/call'
require 'celluloid/opm/history'
require 'celluloid/opm/mailbox'
require 'celluloid/opm/serialization'
require 'celluloid/opm/store'

module Celluloid
  module OPM
    def self.included(base)
      base.instance_eval do
        include Celluloid unless self.is_a?(Celluloid)
        extend ClassMethods

        use_mailbox do
          history = OPM::History.new(@store, @serialization)
          OPM::Mailbox.new(history)
        end
      end
    end

    module ClassMethods
      def opm_store(type_or_store, opts = {})
        if type = OPM::Store::BUILT_IN_TYPES[type_or_store]
          @store = type.new(opts)
        else
          @store = type_or_store
        end
      end

      def opm_serialization(type_or_serialization)
        @serialization = OPM::Serialization::BUILT_IN_TYPES[type_or_serialization] ||
          type_or_serialization
      end
    end
  end
end
