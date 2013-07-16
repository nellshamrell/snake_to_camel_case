require_relative '../spec/spec_helper'

describe CaseConverter do

  before(:each) do
    @case_converter = CaseConverter.new
  end

  it "converts snake_case to CamelCase" do
    @case_converter.snake_to_camel("some_method_name").should == "SomeMethodName"
  end

end
