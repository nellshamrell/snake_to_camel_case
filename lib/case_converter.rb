class CaseConverter
  def upcase_characters(string)
  string.gsub(/(\A_?[a-z]|(?<=_)[a-z])/) {|char| char.upcase}
  end

  def remove_underscores(string)
    string.gsub(/_/, '')
  end

  def snake_to_camel(string)
    remove_underscores(upcase_characters(string))
  end
end
