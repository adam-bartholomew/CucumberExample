package CucumberExample.CucumberExample;

import io.cucumber.java.en.*;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class EvenNumberStepDefinitions {
    private Integer number;
    private String actualAnswer;
    
    @Given("An integer {int}")
    public void an_integer(Integer number) {
    	this.number = number;
    }
    
    @When("I check if it is even")
    public void i_check_if_it_is_even() {
    	actualAnswer = number % 2 == 0 ? "Yes" : "No";
    }

    @Then("The result should be {string}")
    public void the_result_should_be(String expectedAnswer) {
        assertEquals(expectedAnswer, actualAnswer);
    }
}
