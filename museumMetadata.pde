import java.util.Date;
JSONArray values;



void setup(){
  String diectoryOfObjects = "/Users/khin/Documents/Museum_Metedata/museumMetadata/objects/";
  
  String[] fileNamesOfPath = filenamesGenerator(diectoryOfObjects);
  //printArray(fileNamesOfPath);
  
  //loop over the objects, inside every object, call the function that creats JsonArray.
  
  values = new JSONArray();
  for(String fileName: fileNamesOfPath){
    if( fileName.indexOf(".DS_Store") < 0){
      JSONObject data = loadJSONObject(diectoryOfObjects+ fileName);
      values.append(data);
      println("values");
    }
  }
}

String[] filenamesGenerator(String dir){
    String[] filenames = listFileNames(dir);
    return filenames;
}
 
String[] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list();
    return names;
  } else {
    return null;
  }
}