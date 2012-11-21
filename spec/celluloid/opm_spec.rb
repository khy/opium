require File.dirname(__FILE__) + '/../spec_helper'

describe Celluloid::OPM do
  class Document
    include Celluloid::OPM

    opm_store :memory
    opm_serialization :json

    attr_accessor :title
  end

  it 'should persist method calls in a prevalence object' do
    document = Document.new
    document.title = 'This'
    document.title = 'That'
    last_call = document.mailbox.history.pop
    last_call.method.should == :title=
    last_call.arguments.first.should == 'That'
  end
end
