package in.financetrackingapp.finance_tracking_app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@EnableScheduling
@SpringBootApplication
public class FinanceTrackingAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(FinanceTrackingAppApplication.class, args);
	}

}
