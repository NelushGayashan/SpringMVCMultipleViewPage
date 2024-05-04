<!DOCTYPE html>
<html>
<head>
  <script>
    function redirectToViewPage() {
        window.location.href = "menu";
    }
  </script>
</head>
<body>
  <h1>Confirmation Page</h1>
  <p>Item ${itemNumber} - Order is Confirmed</p>
  <button onclick="redirectToViewPage()">View Menu</button>
</body>
</html>
