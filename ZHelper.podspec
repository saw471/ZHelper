Pod::Spec.new do |s|
s.name         = 'ZHelper'
s.version      = '0.0.33'
s.summary      = 'An easy way to use pull-to-refresh'
s.homepage     = 'https://github.com/saw471/ZHelper'
s.license      = 'MIT'
s.authors      = {'saw471' => 'saw471@foxmail.com'}
s.platform     = :ios, '11.0'
s.source       = {:git => 'https://github.com/saw471/ZHelper.git', :tag => s.version}
s.source_files = 'ZHelper/**/*.{h,m}'
s.requires_arc = true
end
