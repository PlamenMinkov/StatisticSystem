package com.server.statistic;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class StatisticServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(StatisticServerApplication.class, args);
	}

}
