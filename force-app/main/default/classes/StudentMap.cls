public class StudentMap {
    
    public static void createStudentMap() {
        Map<Integer, String> studentMap = new Map<Integer, String>();
        
        studentMap.put(101, 'John Doe');
        studentMap.put(102, 'Alice Smith');
        studentMap.put(103, 'Bob Johnson');
        
        for(Integer std : studentMap.keySet()){
            System.debug(studentMap.containsKey(std));
        }
        
    }
}