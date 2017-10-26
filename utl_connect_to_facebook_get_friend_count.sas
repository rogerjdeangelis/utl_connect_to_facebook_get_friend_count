Python: Programatically connect to facebook and fetch the friends count.

SOABOX ON
 It appears that facebook is is following SAS with supermax lockdown.
 You cannot get the good stuff ANYMORE line friend information or
 access to others public information?.
 LinkedIn is doing the same with its api
 My suggestuion is to use Python and R web page scrapping instead of the API
SOAPBOX OFF

  WORKING CODE
  (You do not need 'secret text', userid or password.)

    graph = facebook.GraphAPI(token);
    posts = graph.get_connections('me','friends',limit=5);
    print json.dumps(posts,indent=4);

    Yeilds

    {
        "data": [],
        "summary": {
            "total_count": 110
        }
    }

see
http://shivammitra.com/count-likes-facebook-post-python/

*                _               _       _
 _ __ ___   __ _| | _____     __| | __ _| |_ __ _
| '_ ` _ \ / _` | |/ / _ \   / _` |/ _` | __/ _` |
| | | | | | (_| |   <  __/  | (_| | (_| | || (_| |
|_| |_| |_|\__,_|_|\_\___|   \__,_|\__,_|\__\__,_|

;

To get a access token go to
https://developers.facebook.com/tools/accesstoken/
click on debug an then extened attributes

I copied the token and then split it ito three pieces;

tok1 ='EAAONjIBzy60BAOCpynNcopNkivOnaRODHnvjPoZCe9arFg7EdnTvKZBOA';
tok2 ='d0ylMIQBFK94HoPLDljx7keHXQoxSUZC2M5kfISwSBJj6TeDZBqlPXNdALJda7agB';
tok3 ='RmUZAWQQArO9j7zqOrNhjxNg5K8ZBCSWxk4nQV3mEplAzwFK7gZDZD';
token=tok1+tok2+tok3;

*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;

%utl_submit_py64("
import facebook;
import json;
tok1 ='EAAONjIBzy60BAOCpynNcopNkivOnaRODHnvjPoZCe9arFg7EdnTvKZBOA';
tok2 ='d0ylMIQBFK94HoPLDljx7keHXQoxSUZC2M5kfISwSBJj6TeDZBqlPXNdALJda7agB';
tok3 ='RmUZAWQQArO9j7zqOrNhjxNg5K8ZBCSWxk4nQV3mEplAzwFK7gZDZD';
token=tok1+tok2+tok3;
graph = facebook.GraphAPI(token);
posts = graph.get_connections('me','friends');
print(posts);
print json.dumps(posts,indent=4);
");

{u'data': [], u'summary': {u'total_count': 110}}

{
    "data": [],
    "summary": {
        "total_count": 110
    }
}

