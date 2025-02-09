package Performance

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import io.gatling.core.structure.ScenarioBuilder
import io.gatling.core.structure.PopulationBuilder
import io.gatling.core.scenario.Simulation
import scala.concurrent.duration._  

class PerformanceTest extends Simulation {

  val protocol = karateProtocol("/api/products/{productId}" -> Nil)

  val create: ScenarioBuilder = scenario("Create and Delete")
    .exec(karateFeature("classpath:APITesting/Performance/data/PerformanceTest.feature"))

  setUp(
    create.inject(
      Seq( 
        atOnceUsers(5),
        nothingFor(4.seconds),
        constantUsersPerSec(1).during(10.seconds),
        constantUsersPerSec(2).during(10.seconds),
        rampUsersPerSec(2).to(10).during(10.seconds),
        nothingFor(4.seconds),
        constantUsersPerSec(2).during(5.seconds)
      )
    )
  ).protocols(protocol)
}
