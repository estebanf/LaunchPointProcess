/* place JavaScript code here */
jsx3.lang.Package.definePackage("validation",function(validation){
    var server = HumanVerificationForm.getServer();
    validation.rowClick = function(obj,sender){
        var recordId = obj.emGetSession().recordId;
        var txt = server.getJSXByName("EnvironmentId");
        var map = server.getCache().getDocument('Cases-nomap');
        var node= map.selectSingleNode("//record[@jsxid='" + recordId + "']");
        var fileId= node.getAttribute("FileId");

        var win = window.open(fileId,'_blank');
        win.focus();

//        jsx3.log('Clicked on button mask in row ' + this.emGetSession().recordId + '.');
    }
});
 