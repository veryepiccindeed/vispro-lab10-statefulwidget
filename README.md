# ephemeral_state_codelab

Ephemeral state adalah state sementara (tidak akan disimpan). Ini berguna jika kita ingin membuat suatu widget yang statenya bersifat sementara (seperti form, penghitung angka) dan hanya berlaku paada satu widget itu saja.

Scoped model adalah library untuk mengelola state secara global sehingga bisa diakses dan dimodifikasi oleh widget manapun, tanpa perlu mengoper valuenya secara manual dengan konstruktor

Untuk aplikasi besar yang membutuhkan autentikasi user, shopping card dan sejenisnya, disarankan untuk menggunakan scoped model agar mengurangi redundansi (pengulangan) kode 

