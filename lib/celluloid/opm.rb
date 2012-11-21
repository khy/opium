require 'celluloid/opm/version'

require 'celluloid'

require 'celluloid/opm/history'
require 'celluloid/opm/mailbox'
require 'celluloid/opm/serialization'
require 'celluloid/opm/store'

module Celluloid
  module OPM
    def self.included(base)
      base.send :include, Celluloid
      base.send :extend, ClassMethods
    end

    module ClassMethods
      def opm_store(type_or_store, opts = {})
        use_mailbox do
          if type = OPM::Store::BUILT_IN_TYPES[type_or_store]
            store = type.new(opts)
          else
            store = type_or_store
          end

          history = OPM::History.new(store)

          OPM::Mailbox.new(history)
        end
      end
    end
  end
end
