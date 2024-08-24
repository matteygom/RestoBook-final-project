package pl.coderslab.RestoBook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.RestoBook.domain.Restaurant;

import java.util.Optional;
import java.util.List;

public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {

    Optional<Restaurant> findByRestoName(String restoName);
    List<Restaurant> findByCity(String city);
    List<Restaurant> findByCuisine(String cuisine);
    List<Restaurant> findByZipCode(String zipCode);
    List<Restaurant> findByActive(boolean active);
    List<Restaurant> findTop6ByOrderByCreatedAtDesc();
    List<Restaurant> findTop5ByOrderByRatingDesc();
}
