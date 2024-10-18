package pl.coderslab.RestoBook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.RestoBook.domain.Foodie;
import pl.coderslab.RestoBook.domain.Restaurant;
import pl.coderslab.RestoBook.domain.User;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    long count();

    User findByUserName(String username);
}
