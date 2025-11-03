package com.example.githubActions;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class GithubActionsApplication {

	@GetMapping
	public String hello(){
		return "Hello world !";
	}

	public static void main(String[] args) {
		SpringApplication.run(GithubActionsApplication.class, args);
	}

}
