#
# Rakefile to build standalone `secho` Unix-like executable program.
#
freeze = "freeze"
io = "secho"

task :default do
    sh "#{freeze} #{io}.py"
    sh "make -f Makefile"
    sh "strip #{io}"
    sh "rm -f Makefile *.o *.c"
end

task :clean do
    sh "rm -f #{io}"
end

task :test do
    puts "dummy test"
end
