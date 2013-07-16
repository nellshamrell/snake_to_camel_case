class CaseConverter
  def snake_to_camel(string)
    string.gsub(/^\w/) {|char| char.upcase}
  end
end
