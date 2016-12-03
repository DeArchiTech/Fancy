source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target 'Fancy' do
    pod "SugarRecord"
    pod "SugarRecord/CoreData"
    pod "SugarRecord/CoreData+iCloud"
end

def testing_pods
    pod 'Quick'
    pod 'Nimble'
end

target 'FancyTests' do
    testing_pods
end

target 'FancyUITests' do
    testing_pods
end
