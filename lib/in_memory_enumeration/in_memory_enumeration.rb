module Pivotal

  # Provide a similar API to acts_as_enumerable but in memory instead of database tables
  class InMemoryEnumeration
    def initialize(id, name)
      @id = id
      @name = name
    end

    attr_reader :id, :name
    class_inheritable_accessor :enumerated_values

    def quoted_id
      id
    end

    def to_param
      id.to_s
    end

    def self.all
      enumerated_values
    end

    def self.count
      enumerated_values.size
    end

    def self.[](arg)
      case arg
      when Symbol
        rval = lookup_name(arg.id2name) and return rval
      when String
        rval = lookup_name(arg) and return rval
      when Fixnum
        rval = lookup_id(arg) and return rval
      when nil
        rval = nil
      else
        raise TypeError, "#{self.name}[]: argument should be a String, Symbol or Fixnum but got a: #{arg.class.name}"
      end
    end

    def self.lookup_name(name)
      enumerated_values.detect {|status| status.name == name}
    end

    def self.lookup_id(id)
      enumerated_values.detect {|status| status.id == id}
    end
  end
end
