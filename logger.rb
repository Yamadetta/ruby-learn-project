require 'awesome_print'

def log(obj)
  ap(obj, {
       indent: 2,      # Number of spaces for indenting.
       index: false, # Display array indices.
       html: false, # Use ANSI color codes rather than HTML.
       multiline: true, # Display in multiple lines.
       plain: false, # Use colors.
       raw: false, # Do not recursively format instance variables.
       sort_keys: false,  # Do not sort hash keys.
       sort_vars: true,   # Sort instance variables.
       limit: false, # Limit arrays & hashes. Accepts bool or int.
       ruby19_syntax: false, # Use Ruby 1.9 hash syntax in output.
       class_name: :class, # Method called to report the instance class name. (e.g. :to_s)
       object_id: true   # Show object id.
     })
end
