require 'find'

Find.find("./") do |filename|
    if filename=~/.+?md/
    File.open(filename,"r+") do |f|
        text=f.read()
        text.gsub!(/[\n]/m,"\n\n")
        text.gsub!(/〔/,"- 〔")
        p text
        f.rewind
        f.write(text)
        
    end
    return nil
    end
end