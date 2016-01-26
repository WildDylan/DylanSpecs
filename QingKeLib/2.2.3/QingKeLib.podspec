Pod::Spec.new do |s|
  s.name             = "QingKeLib"
  s.version          = "2.2.3"
  s.summary          = "QingKe private pod repo"
  s.description      = "QingKe private pod repo, some third part libraries"
  s.homepage         = "http://gits.imqingke.com/dylan/QingKeLib"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "dylan" => "958226951@qq.com" }
  s.source           = { :git => "http://gits.imqingke.com/dylan/qingkelib.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
# s.source_files = 'Pod/Classes/*'
  s.subspec 'MJRefresh' do |mj|
    mj.requires_arc = true
    mj.source_files = 'Pod/Classes/MJRefresh/**', 'Pod/Classes/MJRefresh/MJRefresh.bundle'
    mj.resource     = 'Pod/Classes/MJRefresh/MJRefresh.bundle'
  end
  s.subspec 'WaterCollection' do |wc|
    wc.requires_arc = true
    wc.source_files = 'Pod/Classes/WaterCollection/**'
  end
  s.subspec 'Masonry' do |ms|
    ms.requires_arc = true
    ms.source_files = 'Pod/Classes/Masonry/**'
  end
  s.subspec 'iOSCategory' do |ic|
    ic.requires_arc = true
    ic.source_files = 'Pod/Classes/iOSCategory/**'
  end
  s.subspec 'SZTextView' do |sz|
    sz.requires_arc = true
    sz.source_files = 'Pod/Classes/SZTextView/**/*'
  end
  s.subspec 'MKNetworkKit' do |mk|
    mk.requires_arc = true
    mk.source_files = 'Pod/Classes/MKNetworkKit/**', 'Pod/Classes/MKNetworkKit/Categories/**'
  end
  s.resource_bundles = {
    'QingKeLib' => ['Pod/Assets/*.png']
  }
  s.frameworks = 'UIKit', 'Foundation', 'CoreFoundation'
end
