# Binding::Slicer

This gem let you write code to construct Hash objects much easier!

You can write:

```ruby
require 'binding-slicer'
using Binding::Slicer

a = 1
b = 2
c = 3

binding[:a, :b, :c] #-> {a: a, b: b, c: c}
```

You should always write very stressful code, like this:

```ruby
def foo(my_argument_one, my_argument_two, my_argument_three)
    options = {
        my_argument_one: my_argument_one,
        my_argument_two: my_argument_two,
        my_argument_three: my_argument_three,
    }
    bar(options)
end
```

With this gem, you can simplify it dramatically!

```ruby
def foo(my_argument_one, my_argument_two, my_argument_three)
    bar(binding[:my_argument_one, :my_argument_two, :my_argument_three])
end
```

## TODO

* Write tests!
* Implement `_[:a, :b, :c]`
* Can we use more hash-like presentation?

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'binding-slicer'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install binding-slicer

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tagomoris/binding-slicer.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
