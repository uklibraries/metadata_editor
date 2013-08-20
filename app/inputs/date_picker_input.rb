#class DatePickerInput < SimpleForm::Inputs::StringInput
#  def input
#    value = input_html_options[:value]
#    value ||= object.send(attribute_name) if object.respond_to? attribute_name
#    input_html_options[:value] ||= I18n.localize(value) if value.present?
#    input_html_classes << "date_picker"
#
#    super
#  end
#end
#module SimpleForm
#  module Inputs
#    class DatePickerInput < Base
#      def input
#        @builder.text_field(attribute_name, input_html_options)
#      end
#    end
#  end
#end
class DatePickerInput < SimpleForm::Inputs::Base
  def input
    @builder.text_field(attribute_name, input_html_options)
  end
end
