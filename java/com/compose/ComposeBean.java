package com.compose;

public class ComposeBean {
        private String recieverid;
        private String subject;
        private String composemail;
        private String senderid;
        private String msid;
        private String file;
        private String time;
        
        public ComposeBean() {
			super();
			// TODO Auto-generated constructor stub
		}

		public ComposeBean(String recieverid, String subject, String composemail,String file) {
			super();
			this.recieverid = recieverid;
			this.subject = subject;
			this.composemail = composemail;
			this.file=file;
		
			
			
		}

		public String getRecieverid() {
			return recieverid;
		}

		public void setRecieverid(String recieverid) {
			this.recieverid = recieverid;
		}

		public String getSubject() {
			return subject;
		}

		public void setSubject(String subject) {
			this.subject = subject;
		}

		public String getComposemail() {
			return composemail;
		}

		public void setComposemail(String composemail) {
			this.composemail = composemail;
		}

		public String getSenderid() {
			return senderid;
		}

		public void setSenderid(String senderid) {
			this.senderid = senderid;
		}

		public String getMsid() {
			return msid;
		}

		public void setMsid(String msid) {
			this.msid = msid;
		}

		public String getFile() {
			return file;
		}

		public void setFile(String file) {
			this.file = file;
		}

		public String getTime() {
			return time;
		}

		public void setTime(String time) {
			this.time = time;
		}

		

        
        


}
