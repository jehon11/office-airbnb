import swal from 'sweetalert';

function bindSweetAlertButton() {
 const swalButton = document.getElementById('sweet-alert-reservation');
 if (swalButton) {
   swalButton.addEventListener('click', (e) => {
     swal({
           title: "Booking confirmed!",
           icon: "success",
           timer: 2000
         })

    window.setTimeout(function(){

   window.location.href = "/reservations";

    }, 2000);
     })
   }
 }

bindSweetAlertButton();
