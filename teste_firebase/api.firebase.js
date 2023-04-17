<script type="module">
  // Import the functions you need from the SDKs you need
  import { initializeApp } from "https://www.gstatic.com/firebasejs/9.19.1/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.19.1/firebase-analytics.js";
   TODO: Add SDKs for Firebase products that you want to use
   https://firebase.google.com/docs/web/setup#available-libraries

  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  const firebaseConfig = {
    apiKey: "AIzaSyCQTrUoZ_I-TouDGEaDUAGF7NJmabiYI4U",
    authDomain: "testefirebase-9164d.firebaseapp.com",
    projectId: "testefirebase-9164d",
    storageBucket: "testefirebase-9164d.appspot.com",
    messagingSenderId: "325668866931",
    appId: "1:325668866931:web:982ce0be20f778921e1306",
    measurementId: "G-4VBVZ8T096"
  };

  // Initialize Firebase
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);
</script>