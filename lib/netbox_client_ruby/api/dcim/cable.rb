# frozen_string_literal: true

require 'netbox_client_ruby/entity'

module NetboxClientRuby
  module DCIM
    class Cable
      include Entity

      id id: :id
      deletable true
      path 'dcim/cables/:id/'
      creation_path 'dcim/cables/'
    end
  end
end
