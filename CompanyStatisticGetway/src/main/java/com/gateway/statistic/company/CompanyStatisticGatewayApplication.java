package com.gateway.statistic.company;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.context.annotation.Import;

import com.gateway.statistic.company.config.TemplateConfig;

@SpringBootApplication
@EnableZuulProxy
@Import({TemplateConfig.class})
public class CompanyStatisticGatewayApplication {

	public static void main(String[] args) {
		SpringApplication.run(CompanyStatisticGatewayApplication.class, args);
	}

}
