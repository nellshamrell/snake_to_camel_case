class CaseConverter
  def upcase_characters(string)
    string.gsub(/(^[^a-z]?[a-z])|(_[a-z])/) {|char| char.upcase}
  end

  def remove_underscores(string)
    string.gsub(/_/, '')
  end
end
