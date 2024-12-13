package uk.gov.hmcts.reform.rhubarb.recipes;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@SuppressWarnings("HideUtilityClassConstructor")
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
