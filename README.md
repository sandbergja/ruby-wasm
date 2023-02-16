# WASM experiments

## Activity

1. Run `bundle install`
1. Run `bundle exec ruby -run -e httpd . -p 8000` to get a server running on port 8000
1. Open http://localhost:8000/activity in your browser
1. Open `activity/my_class.rb` in your editor
1. Change the functionality of `MyClass` to something you're interested in.  Just make sure you still implement the `to_s` method.

### If you need a gem...

Not very likely that it will work in this particular setup.
But possible, especially if the gem doesn't have any runtime dependencies.

1. `gem install -i activity/gems numerizer -v 0.2.0`
1. Add `<script type="text/ruby" src="gems/gems/numerizer-0.2.0/lib/numerizer.rb"></script>` to activity/index.html
1. After that `<script>` tag, you can then use your gem like so:

```
<script type="text/ruby">
puts Numerizer.numerize('two and three eighths')
# => should print "2.375" to the console
</script>
```
