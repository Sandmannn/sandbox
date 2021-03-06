package com.example.movies;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

/**
 * @author Greg Turnquist
 */
// tag::code[]
@Component
public class DatabaseLoader implements CommandLineRunner {

	private final MovieRepository repository;

	@Autowired
	public DatabaseLoader(MovieRepository repository) {
		this.repository = repository;
	}

	@Override
	public void run(String... strings) throws Exception {
		this.repository.save(new Movie("Mew", "Moop", "ring bearer"));
		this.repository.save(new Movie("great movie", "Moop", "very great"));
		this.repository.save(new Movie("movie 2", "Moop", "something "));
		this.repository.save(new Movie("some Mew", "Moop", "great description"));
	}
}