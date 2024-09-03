public Class getFreeTrialUseGuideCDId{

    public string UsageGuideContentDocumentID {get; set;}
    
    //Default Controller
    public getFreeTrialUseGuideCDId(){
        getContentDocumentID();
    }

    public void getContentDocumentID(){
        ContentVersion UsageGuideCV = [select Id, title, contentdocumentid from contentversion where title = 'Prodly Free Trial Usage Guide' and islatest = TRUE LIMIT 1];
        
        if(UsageGuideCV != null){
            UsageGuideContentDocumentID = (String) UsageGuideCV.contentdocumentid;
        }        
    }
    

}