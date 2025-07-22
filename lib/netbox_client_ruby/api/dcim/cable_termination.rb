# frozen_string_literal: true

module NetboxClientRuby
  module DCIM
    class CableTermination
      include Entity

      id id: 'id'
      deletable true
      path 'dcim/cable-terminations/:id/'
      creation_path 'dcim/cable-terminations/'
    end
  end
end