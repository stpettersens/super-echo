#
# Rakefile to build standalone `secho` Unix-like executable program on Travis CI.
# To build on your own system; please use `make` instead.
#
freeze = "cxfreeze"
io = "secho"

task :default => [:freeze, :compile]

task :freeze do
    sh "python #{io}.py python test output - OK"
    sh "#{freeze} #{io}.py --target-dir dist"
end

task :compile do
    sh "strip dist/#{io}"
    sh "/dist/#{io} compiled test output - OK"
end

task :clean do
    sh "rm -f #{io}"
end

task :test do
    puts "dummy test"
end
