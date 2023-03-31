package karate.ru;

import com.intuit.karate.junit5.Karate;

public class KarateRunner {

    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:/my.feature")
                .scenarioName("First scenario")
                .relativeTo(getClass());
    }

    @Karate.Test
    Karate myFeatureTests() {
        return Karate.run("classpath:/my.feature")
                .scenarioName("Second scenario")
                .relativeTo(getClass());
    }

    @Karate.Test
    Karate orderDeletingTests() {
        return Karate.run("classpath:/order_deleting.feature")
                .relativeTo(getClass());
    }
}
