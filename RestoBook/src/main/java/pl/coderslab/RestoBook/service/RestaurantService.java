package pl.coderslab.RestoBook.service;

import org.springframework.beans.factory.annotation.Autowired;
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

    public List<Restaurant> findByActive(boolean active) {
        return restaurantRepository.findByActive(active);
    }

    public List<Restaurant> findTop6NewestRestaurants() {
        return restaurantRepository.findTop6ByOrderByCreatedAtDesc();
    }

    public List<Restaurant> findTop5HighestRatedRestaurants() {
        return restaurantRepository.findTop5ByOrderByRatingDesc();
    }

    public Restaurant save(Restaurant restaurant) {
        return restaurantRepository.save(restaurant);
    }

    public Restaurant saveRestaurantWithLogo(Restaurant restaurant, MultipartFile file) throws IOException {
        if (file != null && !file.isEmpty()) {
            byte[] bytes = file.getBytes();
            if (bytes.length <= 250 * 1024) {
                restaurant.setLogo(bytes);
            } else {
                throw new IllegalArgumentException("File size exceeds the maximum allowed size (250 KB)");
            }
        }
        return restaurantRepository.save(restaurant);
    }

    public void deleteById(Long id) {
        restaurantRepository.deleteById(id);
    }

    public void delete(Restaurant restaurant) {
        restaurantRepository.delete(restaurant);
    }
}