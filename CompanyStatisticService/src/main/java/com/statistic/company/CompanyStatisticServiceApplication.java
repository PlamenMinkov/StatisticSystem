package com.statistic.company;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Import;

import com.statistic.company.config.ConnectionConfig;
import com.statistic.company.config.TemplateConfig;

@SpringBootApplication
@EnableEurekaClient
@Import({TemplateConfig.class, ConnectionConfig.class})
public class CompanyStatisticServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(CompanyStatisticServiceApplication.class, args);
	}

}
