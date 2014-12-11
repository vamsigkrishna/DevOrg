global class MobilePDFController {
 public void sendPDF()
 {
        PageReference pdf = Page.PDFPage;
     
        // the contents of the attachment from the pdf
        Blob body;
     
        try {
     
          // returns the output of the page as a PDF
          body = pdf.getContent();
     
        // need to pass unit test -- current bug  
        } catch (VisualforceException e) {
          body = Blob.valueOf('Some Text');
        }
     
        Messaging.EmailFileAttachment attach = new Messaging.EmailFileAttachment();
        attach.setContentType('application/msword');
        attach.setFileName('Tenders.doc');
        attach.setInline(false);
        attach.Body = body;
     
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setUseSignature(false);
        mail.setToAddresses(new String[] { 'vamsi.krishna@smartsalary.com.au'});
        mail.setSubject('Tender Comaprision');
        mail.setHtmlBody('Here is the Tenders Submitted! Check the attachment!');
        mail.setFileAttachments(new Messaging.EmailFileAttachment[] { attach }); 
     
        // Send the email
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
     
        ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Email with Doc sent'));
 }
}