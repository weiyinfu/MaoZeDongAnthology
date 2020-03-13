require 'find'

Find.find("./") do |filename|
    if filename=~/.+?md/
        text=''
    File.open(filename,"r+") do |f|
        text=f.read()
        text.gsub!(/[\n]/m,"\n\n")
        text.gsub!(/^.*〔/,"- 〔")
        f.write(text)
    end
    File.open(filename,"w+") do |f|
        f.write(text)
    end

    end
end