package com.statistic.company;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Import;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.statistic.company.config.ConnectionConfig;
import com.statistic.company.config.TemplateConfig;

@SpringBootApplication
@EnableEurekaClient
@Import({TemplateConfig.class, ConnectionConfig.class})
@EnableJpaRepositories("com.statistic.company.repository")
public class CompanyStatisticServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(CompanyStatisticServiceApplication.class, args);
	}

}
