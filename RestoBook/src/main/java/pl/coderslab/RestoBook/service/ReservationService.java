package pl.coderslab.RestoBook.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.RestoBook.domain.Reservation;
import pl.coderslab.RestoBook.repository.ReservationRepository;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class ReservationService {

    private final ReservationRepository reservationRepository;

    @Autowired
    public ReservationService(ReservationRepository reservationRepository) {
        this.reservationRepository = reservationRepository;
    }

    public List<Reservation> findAll() {
        return reservationRepository.findAll();
    }

    public Optional<Reservation> findById(Long id) {
        return reservationRepository.findById(id);
    }

    public List<Reservation> findByRestaurantId(Long restaurantId) {
        return reservationRepository.findByRestaurantId(restaurantId);
    }

    public List<Reservation> findByDate(Date date) {
        return reservationRepository.findByDate(date);
    }

    public List<Reservation> findByFullName(String fullName) {
        return reservationRepository.findByFullName(fullName);
    }

    public Reservation save(Reservation reservation) {
        return reservationRepository.save(reservation);
    }



    public void deleteById(Long id) {
        reservationRepository.deleteById(id);
    }

    public void delete(Reservation reservation) {
        reservationRepository.delete(reservation);
    }
}