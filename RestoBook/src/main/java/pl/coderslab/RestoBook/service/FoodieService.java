package pl.coderslab.RestoBook.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.RestoBook.domain.Foodie;
import pl.coderslab.RestoBook.repository.FoodieRepository;

import java.util.List;
import java.util.Optional;

@Service
public class FoodieService {

    private final FoodieRepository foodieRepository;

    @Autowired
    public FoodieService(FoodieRepository foodieRepository) {
        this.foodieRepository = foodieRepository;
    }

    public long countAllFoodies() {
        return foodieRepository.countAllFoodies();
    }

    public List<Foodie> findAll() {
        return foodieRepository.findAll();
    }

    public Optional<Foodie> findById(Long id) {
        return foodieRepository.findById(id);
    }

    public Optional<Foodie> findByLastName(String lastName) {
        return foodieRepository.findByLastName(lastName);
    }

    public Optional<Foodie> findByUsername(String userName) {
        return foodieRepository.findByUser_UserName(userName);
    }

    public Foodie save(Foodie foodie) {
        return foodieRepository.save(foodie);
    }

    public void deleteById(Long id) {
        foodieRepository.deleteById(id);
    }

    public void delete(Foodie foodie) {
        foodieRepository.delete(foodie);
    }
}