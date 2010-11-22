## In Memory Enumeration
Provide a similar API to [`acts_as_enumerable`](https://github.com/pivotal/enumerations_mixin) but in memory instead of database tables.

## Installation
Install `in-memory-enumeration` as a gem.

## Usage
Create a class which extends Pivotal::InMemoryEnumeration and configure your enums like such: 

     class Enums < Pivotal::InMemoryEnumeration
       Enums.enumerated_values = [
           Enums.new(1, "One"),
           Enums.new(2, "Two"),
         ]
     end

## Requirements
To initialize properly, this gem requires Rails 3.0 or above.

## Running Tests and Build Dependencies
Below is a sample Gemfile used to create and test this gem.

     # Gemfile
     source "http://rubygems.org"
     
     gem "rails", "3.0.3"
     gem "sqlite3-ruby", "1.3.2"
     gem "rspec-rails", "2.1.0"
     gem "jeweler", "1.5.1"

## MIT License

Copyright (c) 2010 Pivotal Labs (www.pivotallabs.com)
Contact email: amilligan@pivotallabs.com

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.