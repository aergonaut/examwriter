# ExamWriter

It writes exams.

## Requirements

* Ruby 2.0.0
* Postgres

We use `rbenv` in development and Homebrew for package management, but you can do whatever you like.

## Getting Started

### The Easy Way

Just run `script/bootstrap` which will get you all set up and ready to go!

### Go Hardcore

1. Install gems: `bundle install`
2. Create the database: `bin/rake db:create`
3. Load the schema: `bin/rake db:schema:load`
4. Run the tests: `bundle exec rspec`
5. Run the server: `bundle exec unicorn -c config/unicorn.rb`

## Contributing

1. Fork it
2. Create a feature branch (`git checkout -b my_feature`)
3. Push to GitHub (`git push -u origin my_feature`)
4. Open a Pull Request!

## License

The MIT License (MIT)

Copyright (c) 2014 Chris Fung

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
