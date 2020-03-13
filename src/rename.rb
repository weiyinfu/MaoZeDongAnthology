require 'find'

Find.find("./") do |filename|
    if filename=~/.+?txt/
      basename=File.basename(filename)
      basename.gsub!(/\.txt\.md/,'.md')
      File.rename(filename,basename)
    end
end