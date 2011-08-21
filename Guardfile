# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# Add files and commands to this file, like the example:
#   watch('file/path') { `command(s)` }
#
guard 'shell' do
  watch(/.*\.tex/) {|m| `make preview` }
end

guard 'shell' do
  watch(/glossary.tex/) {|m| `make glossary` }
end

guard 'shell' do
  watch(/bibliography.bib/) {|m| `make bib preview` }
end
