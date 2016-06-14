package Task3;

import MyPlot.MyDataSet;

import java.io.*;
import java.nio.file.Files;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by kostya on 6/14/2016.
 */
public class DictionaryTester {
    List<Double> timeArray;
    List<Double> timeBST;
    List<Integer> lengths;
    final String SERIALIZE_FILENAME = "stats.txt";

    DictionaryTester(){
        timeArray = new LinkedList<Double>();
        timeBST = new LinkedList<Double>();
        lengths = new LinkedList<Integer>();
    }
    public void testWorstCase(int step, int last){

        DictionarySortedArray<Integer, Integer>  dictArray = new DictionarySortedArray<Integer, Integer>();
        DictionaryBST<Integer, Integer> dictBST = new DictionaryBST<Integer, Integer>();

        dictBST.buildWorstCase(last);
        dictArray.buildWorstCase(last);
        for(int length = 1; length < last; length+=step){
            int keyToFind = length - 1;

            lengths.add(length);
            double deltaSecondsArray = findAndRecordTimeArray(dictArray, keyToFind);
            double deltaSecondsBST = findAndRecordTimeBST(dictBST, keyToFind);
            System.out.format("Found the last in %d elements sorted array vs BST : %.4f vs %.4f\n", length, deltaSecondsArray, deltaSecondsBST);
        }
    }

    private double findAndRecordTimeBST(DictionaryBST<Integer, Integer> dictBST, int keyToFind) {
        long tStart;
        long tEnd;
        long delta;
        tStart = System.currentTimeMillis();
        int found = dictBST.get(keyToFind);
        assert(found == keyToFind);
        tEnd = System.currentTimeMillis();
        delta = tEnd - tStart;
        double deltaSecondsBST = delta / (double) (1e3);
        timeBST.add(deltaSecondsBST);
        return deltaSecondsBST;
    }

    private double findAndRecordTimeArray(DictionarySortedArray<Integer, Integer> dictArray, int keyToFind) {
        long tStart = System.currentTimeMillis();
        int found = dictArray.get(keyToFind);
        long tEnd = System.currentTimeMillis();
        assert(found == keyToFind);

        long delta = tEnd - tStart;
        double deltaSecondsArray = delta / (double) (1e3);
        timeArray.add(deltaSecondsArray);
        return deltaSecondsArray;
    }

    public void serialize(String fileName) throws FileNotFoundException, UnsupportedEncodingException {
        PrintWriter writer = new PrintWriter(fileName, "UTF-8");
        for(int i = 0; i < lengths.size(); i++)
        {
            writer.format("%d %f %f\n", lengths.get(i), timeArray.get(i), timeBST.get(i));
        }
        writer.close();
    }
    public void deserialize(String fileName) throws IOException {
        File file = new File(fileName);
        Files.lines(file.toPath()).forEach(
                (String s) ->{
                    String[] numbers = s.split(" ");
                    lengths.add(new Integer(numbers[0]));
                    timeArray.add(new Double(numbers[1]));
                    timeBST.add(new Double(numbers[2]));
                }
        );
    }
    public List<MyDataSet> getDataSets(){
        MyDataSet findArray = new MyDataSet(lengths, timeArray, "Sorted array dictionary");
        MyDataSet findBST = new MyDataSet(lengths, timeBST, "BST dictionary");
        List<MyDataSet> sets = new LinkedList<>();
        sets.add(findArray);
        sets.add(findBST);
        return sets;
    }

}
