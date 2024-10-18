// reservationActions.js
function deleteReservationFromList(reservationId, restaurantId) {
    if (confirm('Czy na pewno chcesz usunąć tę rezerwację?')) {
        $.ajax({
            url: '/owner/reservations/delete/' + reservationId,
            type: 'DELETE',
            success: function(result) {
                alert(result);
                window.location.href = '/owner/reservations/list/' + restaurantId; // Przekierowanie po stronie klienta
            },
            error: function(err) {
                alert('Błąd podczas usuwania rezerwacji');
            }
        });
    }
}