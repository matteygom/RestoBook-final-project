package pl.coderslab.RestoBook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.RestoBook.domain.Foodie;

import java.util.Optional;

public interface FoodieRepository extends JpaRepository<Foodie, Long> {


    Optional<Foodie> findByLastName(String lastName);
    Optional<Foodie> findByUser_UserName(String userName);

    @Query("SELECT COUNT(f) FROM Foodie f")
    long countAllFoodies();
}
