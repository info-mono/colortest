#!/bin/env ruby

{
  default: 'gYw',
  'stars': '***',
}.each do |text_name, text|
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
        filename = [fg_name, bg_name, order_name, text_name].select { _1 != :default }.join('_')
        filename = filename == '' ? 'default' : filename
        `#{__dir__}/bin/colortest ' #{text} ' ' ' '#{fg_mode}' '#{bg_mode}' '#{order}' > #{__dir__}/docs/#{filename}`
      end
    end
  end
end 
