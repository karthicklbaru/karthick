<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hacker Alert</title>
</head>
<body>
    <h1>Click anywhere to continue...</h1>

    <script>
        function showNotification() {
            // Check if browser supports notifications
            if ("Notification" in window) {
                Notification.requestPermission().then(function (permission) {
                    if (permission === "granted") {
                        new Notification("Warning!", {
                            body: "You are hacked!",
                            icon: "https://cdn-icons-png.flaticon.com/512/616/616489.png" // Optional icon
                        });
                    } else {
                        alert("Please allow notifications to see the message.");
                    }
                });
            } else {
                alert("Your browser does not support notifications.");
            }
        }

        // Trigger notification on any click
        document.addEventListener("click", showNotification);
    </script>
</body>
</html>
