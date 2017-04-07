class ContactMailer < ApplicationMailer
  default from: ENV['ADMIN_EMAIL']

  def contact_created(contact)
    mail(to: ENV['ADMIN_EMAIL'],
      subject: "샘트라 웹페이지 컨택 | #{contact.name.titleize()} | #{contact.company.titleize()}",
      body: "[성명: #{contact.name}] [소속회사: #{contact.company}]\n
      [연락처: #{contact.contact_number}][소재지: #{contact.location}]\n
      [이메일주소: #{contact.email}]\n
      [문의주제: #{contact.topic}]
      #{'[ AMP: '+contact.amp+' | CKTS: '+contact.ckts+' | RPM: '+contact.rpm+
      ' | BORE: '+contact.bore.to_s+' | ETHERNET: '+contact.ethernet+' ]' if contact.topic == 'Slip Rings'}
      \n
      문의사항:\n
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
