import java.util.Date;
JSONObject json;
JSONArray objects;
String path = "/Users/khin/Documents/Museum_Metedata/museumMetadata/objects";


void setup() {
  
    //Inatialize the string of the path objects here.
    String path = "/Users/khin/Documents/Museum_Metedata/museumMetadata/objects/";
    //println("Listing all filenames in a directory: ");
    String[] filenames = listFileNames(path);
    printArray(filenames);
    
    //File[] files = listFiles(path);
    //printArray(files);
    //Make json array of json objects.
    
    for(int i = 1; i < filenames.length; i ++){
      String fname = path + filenames[i];
      println(fname);
      String[] objectFiles = listFileNames(fname);
      //printArray(objectFiles);
      JSONArray catagorizedJsonObjectsArray = new JSONArray();
      //printArray(objectFiles);

      for(String objectFile:objectFiles){
        JSONObject objectjson = loadJSONObject(objectFile);
        catagorizedJsonObjectsArray.append(objectjson);
      }
      saveJSONArray(catagorizedJsonObjectsArray, "data/new.json");
    }
}
  
String[] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list();
    return names;
  } else {
    // If it's not a directory
    return null;
  }
} 

File[] listFiles(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    File[] files = file.listFiles();
    return files;
  } else {
    // If it's not a directory
    return null;
  }
}
  
  
  
  
  
  
 