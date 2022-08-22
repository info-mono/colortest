#!/bin/env ruby

{
  default: 'gYw',
  'stars': '***',
}.each do |string_name, string|
  {
    'minimal': 'normal',
    'simple': 'normal bright',
    default: 'normal both',
    'full-fg': 'normal bold bright both',
  }.each do |fg_name, fg_mode|
    {
      default: 'normal',
      'bright-bg': 'bright',
      'full-bg': 'normal bright',
    }.each do |bg_name, bg_mode|
      {
        'no-label': 'none 0 1 2 3 4 5 6 7',
        default: 'label none 0 1 2 3 4 5 6 7',
        'simple-spectrum_no-label': 'none 0 3 2 6 4 5',
        'simple-spectrum': 'label none 1 3 2 6 4 5',
        'spectrum_no-label': 'none 0 7 1 3 2 6 4 5',
        'spectrum': 'label none 0 7 1 3 2 6 4 5',
      }.each do |order_name, order|
        filename = [fg_name, bg_name, order_name, string_name].select { _1 != :default }.join('_')
        filename = filename == '' ? 'default' : filename
        `#{__dir__}/bin/colortest -s ' #{text} ' -S ' ' -f '#{fg_mode}' -b '#{bg_mode}' -F '#{order}' > #{__dir__}/docs/#{filename}`
      end
    end
  end
end 
