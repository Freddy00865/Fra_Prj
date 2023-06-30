<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<style>
body, html {
  height: 100%;
  margin: 0;
}

.button {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 200px;
  height: 200px;
  background-color: #152238;
  border-radius: 50%;
  color: white;
  font-size: 24px;
  display: flex;
  justify-content: center;
  align-items: center;
  transition: background-color 0.3s ease;
  cursor: pointer;
}

.button:hover {
  background-color: #0C1722;
}

.button:active {
  background-color: #0A1218;
}
</style>
</head>
<body>
  <div id="button" class="button">
    Press Here
  </div>

  <script>
  window.addEventListener('DOMContentLoaded', (event) => {
    const button = document.getElementById('button');

    function handleClick() {
//Metodo per verificare se il browser supporta la geolocalizzazione! 

    if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(savePosition);	
    
    }else{
    	alert("Geolocalizzazione non supportata!")
    }
    
    }

    
    function savePosition(position) {
        const latitude = position.coords.latitude;
        const longitude = position.coords.longitude;
        
        // Salva la posizione Corretta!!
       
        console.log(`Current position: Latitude=${latitude}, Longitude=${longitude}`);
      }

      button.addEventListener('click', handleClick);
    });
    
    
  </script>
</body>
</html>
