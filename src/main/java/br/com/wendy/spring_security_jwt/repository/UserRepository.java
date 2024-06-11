package br.com.wendy.spring_security_jwt.repository;

import br.com.wendy.spring_security_jwt.modal.User;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface UserRepository extends CrudRepository<User, String> {

    Optional<User> findByUsername(String username);
}
