
Pod::Spec.new do |spec|

  spec.name         = "EiteiQR"
  spec.version      = "3.4.0"
  spec.summary      = "A QR Code Framework developed by Eitei."

  spec.description  = <<-DESC
                    A new generation of QR Code Scanner developed by Eitei.
                   DESC
  spec.homepage     = "https://github.com/JunEitei/EiteiQR"
  spec.author             = { "Damao" => "jun.huang@eitei.co.jp" }

  spec.platform     = :ios, '12.0'
  spec.swift_version = "5.7"
  
  spec.source       = { :git => "https://github.com/JunEitei/EiteiQR.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/EiteiQR/**/*"
  
  spec.resource =  ["Sources/EiteiQR/Resource.bundle"]
  
  spec.dependency 'SnapKit', '~> 5.7.0'
  spec.dependency 'DSF_QRCode', '~> 20.0.0'

end
