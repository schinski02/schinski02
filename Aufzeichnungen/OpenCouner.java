public class OpenCouner{
    
    protected int count = 0;
    void step() {
        count++;
    }
    int read() {
        return count;
    }
    int reset() {

    }
}
class Memcounter extends OpenCouner {

    private int memory = 0;

    void mark() {
        memory = count;
        }
        
    void recall{} {
        count = memory;
    }

}
Memcounter c = new Memcounter(); {
    c.step();
    c.mark();
    c.reset();
    c.recall();
}