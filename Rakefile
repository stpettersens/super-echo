#
# Rakefile to build standalone `secho` Unix-like executable program.
#

task :default do
    sh "freeze secho.py"
    sh "make -f Makefile"
    sh "strip secho"
end
