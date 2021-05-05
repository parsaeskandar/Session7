package calculator;

public class Calculator {
    public int add(int a, int b) {
        return a + b;
    }
    public int divide(int a, int b){ return a / b; }
    public int power(int a, int b){
        int res = 1;
        for (int i = 0; i < b; i++) {
            res *= a;
        }
        return res;
    }
}