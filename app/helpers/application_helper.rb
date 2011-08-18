module ApplicationHelper
  def render_new_fields(f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :form => builder, :id => "new_#{association}")
    end
    fields
  end
end
