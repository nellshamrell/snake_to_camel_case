require_relative '../spec/spec_helper'

describe CaseConverter do

  before(:each) do
    @case_converter = CaseConverter.new
  end

  it "capitalizes the first character of a string" do
    @case_converter.upcase_characters("method").should == "Method"
  end

  it "capitalizes the first letter of a string" do
    @case_converter.upcase_characters("_method").should == "_Method"
  end

  it "capitalizes any character that follows an underscore" do
    @case_converter.upcase_characters("some_method_name").should == "Some_Method_Name"
  end

  it "removes underscores throughout the string" do
    @case_converter.remove_underscores("Some_Method_Name").should == "SomeMethodName"
  end

  it "converts snake_case to CamelCase" do
    @case_converter.snake_to_camel("some_method_name").should == "SomeMethodName"
  end

end
