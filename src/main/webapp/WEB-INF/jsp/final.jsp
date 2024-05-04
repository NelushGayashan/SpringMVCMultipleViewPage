<!DOCTYPE html>
<html>

<head>
  <script>
    function redirectToEndPage(itemNumber) {
      var confirmation = confirm("Are you sure you want to confirm?");
      if (confirmation) {
        window.location.href = "end?itemNumber=" + itemNumber; 
      }
    }
  </script>
</head>

<body>
  <h1>Item ${itemNumber}</h1>
  <p>Item ${itemNumber} Details</p>

  <!-- Button to confirm -->
  <button onclick="redirectToEndPage('${itemNumber}')">Confirm</button>

</body>

</html>
