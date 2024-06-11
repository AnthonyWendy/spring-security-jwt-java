package br.com.wendy.spring_security_jwt.modal;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Table("USERS")
@Setter
@Getter
public class User {

    @Id
    private String username;

    private String password;

}
