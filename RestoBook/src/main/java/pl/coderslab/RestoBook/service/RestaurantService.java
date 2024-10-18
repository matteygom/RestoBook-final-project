package pl.coderslab.RestoBook.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import pl.coderslab.RestoBook.domain.Restaurant;
import pl.coderslab.RestoBook.repository.RestaurantRepository;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

@Service
public class RestaurantService {

    private final RestaurantRepository restaurantRepository;

    @Autowired
    public RestaurantService(RestaurantRepository restaurantRepository) {
        this.restaurantRepository = restaurantRepository;
    }

    public List<Restaurant> findAll() {
        return restaurantRepository.findAll();
    }

    public Page<Restaurant> findAllPaginated(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        return restaurantRepository.findAll(pageable);
    }

    public Optional<Restaurant> findById(Long id) {
        return restaurantRepository.findById(id);
    }

    public Optional<Restaurant> findByRestoName(String restoName) {
        return restaurantRepository.findByRestoName(restoName);
    }

    public List<Restaurant> findByCity(String city) {
        return restaurantRepository.findByCity(city);
    }

    public List<Restaurant> findByCuisine(String cuisine) {
        return restaurantRepository.findByCuisine(cuisine);
    }

    public List<Restaurant> findByZipCode(String zipCode) {
        return restaurantRepository.findByZipCode(zipCode);
    }

    public List<Restaurant> findTop6NewestRestaurants() {
        return restaurantRepository.findTop6ByOrderByCreatedAtDesc();
    }

    public List<Restaurant> findTop10NewestRestaurants() {
        return restaurantRepository.findTop10ByOrderByCreatedAtDesc();
    }

    public List<Restaurant> findTop5HighestRatedRestaurants() {
        return restaurantRepository.findTop5ByOrderByRatingDesc();
    }

    public Page<Restaurant> searchRestaurants(String city, String name, int page, int size) {
        return restaurantRepository.findByCityContainingAndRestoNameContaining(city, name, PageRequest.of(page, size));
    }

    public long countAllRestaurants() {
        return restaurantRepository.countAllRestaurants();
    }

    public long countDistinctCuisines(){
        return restaurantRepository.countDistinctCuisines();
    }

    public long countDistinctCountries(){
        return restaurantRepository.countDistinctCountries();
    }

    public Restaurant save(Restaurant restaurant) {
        return restaurantRepository.save(restaurant);
    }


    public void deleteById(Long id) {
        restaurantRepository.deleteById(id);
    }

    public void delete(Restaurant restaurant) {
        restaurantRepository.delete(restaurant);
    }
}