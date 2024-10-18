package pl.coderslab.RestoBook.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.RestoBook.domain.Restaurant;

import java.util.Optional;
import java.util.List;

public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {

    Optional<Restaurant> findByRestoName(String restoName);
    List<Restaurant> findByCity(String city);
    List<Restaurant> findByCuisine(String cuisine);
    List<Restaurant> findByZipCode(String zipCode);
    List<Restaurant> findTop6ByOrderByCreatedAtDesc();
    List<Restaurant> findTop10ByOrderByCreatedAtDesc();
    List<Restaurant> findTop5ByOrderByRatingDesc();


    @Query("SELECT COUNT(r) FROM Restaurant r")
    long countAllRestaurants();

    @Query("SELECT COUNT(DISTINCT r.cuisine) FROM Restaurant r")
    long countDistinctCuisines();

    @Query("SELECT COUNT(DISTINCT r.country) FROM Restaurant r")
    long countDistinctCountries();

    Page<Restaurant> findByCityContainingAndRestoNameContaining(String city, String name, Pageable pageable);


}
