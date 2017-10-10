Pod::Spec.new do |s|
  s.name             = 'EvenlyWrappedLabel'
  s.version          = '1.0.0'
  s.screenshot       = 'https://user-images.githubusercontent.com/2835199/31397079-04d00874-adb3-11e7-9dd6-fb2878b760af.png'
  s.summary          = 'EvenlyWrappedLabel vertically distributes text evenly across any number of lines, preventing orphans and text from grouping up at the top.'
  s.description      = <<-DESC
EvenlyWrappedLabel is a UILabel subclass that will vertically distribute text evenly across any number of lines, preventing text from grouping up at the top and also preventing single word orphans from taking up the entire bottom line.
 
Examples:
 
1. This text:
 
       This sentence has a lot of words on
       the top line.
 
   Becomes:
 
       This sentence has a lot
       of words on the top line.
 
2. This text:
 
       This sentence has a single
       orphan.
 
   Becomes:
 
       This sentence has
       a single orphan.

Features:
- Works with all devices running iOS 9+.
- Uses `drawText(in:)` internally (as opposed to creating subviews), so any `UILabel` reference can be replaced with `EvenlyWrappedLabel` and Everything Will Just Work™.
- Works with any number of lines and any text alignment.
- Works with autolayout and honors intrinsic sizing.
- Works with labels created in code and in Interface Builder.
- Example app with lots of real-time configurations that lets you see the text wrap as you type.
                       DESC

  s.homepage         = 'https://github.com/StockX/EvenlyWrappedLabel'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jeff Burt' => 'jburt1992@gmail.com' }
  s.source           = { :git => 'https://github.com/StockX/EvenlyWrappedLabel.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/jeffburtjr'

  s.ios.deployment_target = '9.0'

  s.source_files = 'EvenlyWrappedLabel/Classes/**/*'
end
