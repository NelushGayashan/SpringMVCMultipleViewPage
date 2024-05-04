<!DOCTYPE html>
<html>

<head>
  <script>
    function redirectToSelected() {
      var dropdown = document.getElementById("itemDropdown");
      var selectedOption = dropdown.options[dropdown.selectedIndex].value;
      if (selectedOption) {
        window.location.href = "item?selectedOption=" + selectedOption;
      }
    }
  </script>
</head>

<body>
  <h1>Item Menu</h1>

  <label for="itemDropdown">Choose a Tutorial:</label>
  <select id="itemDropdown" onchange="redirectToSelected()">
    <option value="" disabled selected>Select an Item</option>
    <option value="item1">Item 1</option>
    <option value="item2">Item 2</option>
    <option value="item3">Item 3</option>
  </select>

</body>

</html>
