require 'celluloid'
require 'oj'

require 'celluloid/opm/history'
require 'celluloid/opm/mailbox'
require 'celluloid/opm/message'
require 'celluloid/opm/serialization/binary'
require 'celluloid/opm/serialization/json'
require 'celluloid/opm/snapshot'
require 'celluloid/opm/store'
require 'celluloid/opm/version'

module Celluloid
  module OPM
    def self.included(base)
      base.instance_eval do
        extend ClassMethods

        use_mailbox { OPM::Mailbox.new }
      end
    end
  end
end
