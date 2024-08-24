package pl.coderslab.RestoBook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.RestoBook.domain.Reservation;

import java.util.Date;
import java.util.List;

@Repository
public interface ReservationRepository extends JpaRepository<Reservation, Long> {

    List<Reservation> findByRestaurantId(Long restaurantId);
    List<Reservation> findByDate(Date date);
    List<Reservation> findByFullName(String fullName);
}
