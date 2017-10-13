Pod::Spec.new do |s|
  s.name             = 'EvenlyWrappedLabel'
  s.version          = '1.1.0'
  s.screenshot       = 'https://user-images.githubusercontent.com/2835199/31405403-f41c28ea-adcc-11e7-9555-5459ae1794d9.png'
  s.summary          = 'EvenlyWrappedLabel vertically distributes text or attributed text evenly across any number of lines, preventing orphans and text from grouping up at the top.'
  s.description      = <<-DESC
EvenlyWrappedLabel is a UILabel subclass that will vertically distribute text or attributed text evenly across any number of lines, preventing text from grouping up at the top and also preventing single word orphans from taking up the entire bottom line.
 
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
- Works with any number of lines, any text alignment and attributed text.
- Works with autolayout and honors intrinsic sizing.
- Works with labels created in code and in Interface Builder.
- `useEveryLine` option to force shorter text to take up all available lines.
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
