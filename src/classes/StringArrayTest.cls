/**
 * Created by stevendykstra on 8/9/17.
 */

public class StringArrayTest {
    public static List<String> generateStringArray(Integer num){
        List<String> strtest = new List<String>();

        for(Integer i = 0; i < num; i++){
            strtest.add('Test ' + i);
        }

        return strtest;
    }
}