# frozen_string_literal: true

module NetboxClientRuby
  module DCIM
    class SiteGroup
      include Entity

      id id: :id
      deletable true
      path 'dcim/site-groups/:id/'
      creation_path 'dcim/site-groups/'
      object_fields parent: proc { |raw_data| SiteGroup.new raw_data['id'] }
    end
  end
end
