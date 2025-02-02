package APITesting;

import com.intuit.karate.junit5.Karate;

 public class TestRunner {

    @Karate.Test
    Karate testParallel()
    {
        return Karate.run().relativeTo(getClass());
    }

}