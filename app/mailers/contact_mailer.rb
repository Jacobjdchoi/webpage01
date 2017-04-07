class ContactMailer < ApplicationMailer
  default from: ENV['ADMIN_EMAIL']

  def contact_created(contact)
    mail(to: ENV['ADMIN_EMAIL'],
      subject: '샘트라 웹페이지 컨택',
      body: "[성명: #{contact.name}]\n
      [연락처: #{contact.contact_number}]\n
      [소속회사: #{contact.company}]\n
      [이메일주소: #{contact.email}]\n
      [문의주제: #{contact.topic}]\n"
      if contact.topic == "Slip Rings"
      + "[amp:#{contact.amp}][ckts:#{contact.ckts}][rpm:#{contact.rpm}]\n
      [bore?:#{contact.bore}][ehthernet?:#{contact.ethernet}]\n"
      end
      + "문의사항:\n
      #{contact.body}"
    )
  end

  def thank_you_letter(contact)
    mail(to: contact.email,
      # subject: ,
      # body:
    )
  end

end
