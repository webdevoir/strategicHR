class CertificatePdf < Prawn::Document
  def initialize(certificate)
    super(page_layout: :landscape)
    @certificate = certificate
    @user = User.find(@certificate.user_id)
    @course = Course.find(@certificate.course_id)
    image "#{Rails.root}/app/assets/images/StrategicHRCertificate.png", :at => [0, 612]
    certificate_info
  end
  
  def certificate_info
    font "Helvetica", style: :bold_italic, color: "rgb=003399"
    text_box "#{@user.name}",
              at: [0,400],
              width: 720, 
              height: 36, 
              size: 24, 
              align: :center, 
              overflow: :shrink_to_fit
    text_box  "#{@course.name}",  
              at: [0,300],
              width: 720, 
              height: 36, 
              size: 24, 
              align: :center, 
              overflow: :shrink_to_fit
    text_box  "#{@certificate.purchase_date.strftime('%B %e, %Y')}",  
              at: [110,198],
              width: 200, 
              height: 36, 
              size: 18, 
              align: :center, 
              overflow: :shrink_to_fit
    #text "On #{@certificate.purchase_date}"
  end
end