require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Mashup do
  describe "create" do
     it 'returns an image and a tweet' do
        @mashup = Mashup.create
        @mashup[:image].should be_true
        @mashup[:tweet].should be_true
     end
     it 'returns an image and tweet when run 25 times' do
       25.times do
        @mashup = Mashup.create
        @mashup[:image].should be_true
        @mashup[:tweet].should be_true
       end
     end
  end
end
