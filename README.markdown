## In Memory Enumeration
Provide a similar API to `acts_as_enumerable` but in memory instead of database tables.  Inspired by [enumerations_mixin](https://github.com/pivotal/enumerations_mixin), which maps Enumerations to rows in a database.  

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