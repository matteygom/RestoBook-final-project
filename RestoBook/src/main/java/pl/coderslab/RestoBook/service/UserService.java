package pl.coderslab.RestoBook.service;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import pl.coderslab.RestoBook.domain.Foodie;
import pl.coderslab.RestoBook.domain.Restaurant;
import pl.coderslab.RestoBook.domain.User;
import pl.coderslab.RestoBook.repository.FoodieRepository;
import pl.coderslab.RestoBook.repository.RestaurantRepository;
import pl.coderslab.RestoBook.repository.UserRepository;


import java.util.List;
import java.util.Optional;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final FoodieRepository foodieRepository;
    private final RestaurantRepository restaurantRepository;

    @Autowired
    public UserService(UserRepository userRepository, FoodieRepository foodieRepository, RestaurantRepository restaurantRepository) {
        this.userRepository = userRepository;
        this.foodieRepository = foodieRepository;
        this.restaurantRepository = restaurantRepository;
    }

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public Optional<User> findById(Long id) {
        return userRepository.findById(id);
    }

    public Optional<User> findByUsername(String userName) {

        return userRepository.findAll().stream()
                .filter(user -> user.getUserName().equals(userName))
                .findFirst();
    }

    public User save(User user) {
        return userRepository.save(user);
    }

    public void deleteById(Long id) {
        userRepository.deleteById(id);
    }

    public void delete(User user) {
        userRepository.delete(user);
    }


    public void saveFoodie(User user, Foodie foodie) {
        user.setPassword(encodePassword(user.getPassword()));
        user.setActive(true);
       userRepository.save(user);

        foodie.setUser(user);
        foodieRepository.save(foodie);
    }

    public void saveRestaurant(User user, Restaurant restaurant) {
        user.setPassword(encodePassword(user.getPassword()));
        user.setActive(true);
       userRepository.save(user);

        restaurant.setUser(user);
        restaurantRepository.save(restaurant);
    }

    private String encodePassword(String rawPassword) {
        return new BCryptPasswordEncoder().encode(rawPassword);
    }
}
