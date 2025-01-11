import flash.utils.getTimer;

function someFunction():void {
  //Some code here
  var startTime:int = getTimer();
  trace ("Starting someFunction at:"+ startTime);
  // Simulate some work
  for (var i:int = 0; i < 1000000; i++) {
    //Do something
  }
  var endTime:int = getTimer();
  trace ("someFunction finished in:"+(endTime-startTime)+"ms");

  // More code here
}

// ... later in the code ...

someFunction();

//Alternative solution using a custom logging class for more advanced logging capabilities:

class Logger {

    public static function log(message:String):void {
        var timestamp:String = new Date().toString();
        trace("[ "+ timestamp +" ] "+ message);
    }
}

// Usage:
Logger.log("This is a log message");