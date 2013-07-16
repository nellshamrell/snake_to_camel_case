require_relative '../spec/spec_helper'

describe CaseConverter do

  before(:each) do
    @case_converter = CaseConverter.new
  end

  it "capitalizes the first character of a string" do
    @case_converter.snake_to_camel("method").should == "Method"
  end

end
