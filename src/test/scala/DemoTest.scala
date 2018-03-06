import org.scalatest.{FlatSpec, Matchers}

class DemoTest extends FlatSpec with Matchers{

  "MyUtil" should "Divide two numbers" in {
    MyUtil.divide(4,2) should be (2)
  }

  it should "throw ArithmaticEception if attempted to divide by 0" in {
    a[java.lang.ArithmeticException] should be thrownBy{
      MyUtil.divide(2,0)
    }
  }

  "Adding two numbers " should "be" in {
    MyUtil.addInt(4,2) should be (6)
  }
}
