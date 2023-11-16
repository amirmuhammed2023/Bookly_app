abstract class failure{
  final String errmsg ;

  const failure(this.errmsg);

}

class serverfailure extends failure{
  serverfailure(super.errmsg);
  
  factory serverfailure.fromResponse(int statuscode , dynamic response){
     if(statuscode == 400 || statuscode == 401 || statuscode == 403){
        return serverfailure(response["error"]["message"]);
     }else if(statuscode == 404) {
      return serverfailure("method not found") ;
     }else if(statuscode == 500) {
      return serverfailure("Internal server error , try later") ;
     }else {
      return serverfailure("oops there is an error ") ;
     }
  }
  
   
}