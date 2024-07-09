<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/all.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-thin.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-solid.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-regular.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-light.css">
    <link rel="stylesheet" href="/resources/css/styles.css">
    <style>
        html, body {
            height: 100%;
        }
    </style>
</head>
<body>

<div class="main" style="background-color: #F6F6F6; height: 100%; padding-top: 100px;">
    <div class="mx-auto bg-white" style="width: 384px; height: 453px; padding: 28px 38px;">
        <div class="d-flex justify-content-center align-items-center" style="margin-bottom: 60px;">
            <div class="pe-2"><img src="/resources/image/logo_black.png" alt=""></div>
            <div style="font-size: 20px; font-weight: 800;">Admin</div>
        </div>
        <div>
            <form method="post" action="/login-admin">
                <div class="mb-3">
                    <label for="InputEmail1" class="form-label text_f14">Username</label>
                    <input type="text" class="form-control" id="InputEmail1" name="username" value="anknh">
                </div>
                <div class="mb-5">
                    <label for="InputPassword1" class="form-label text_f14">Password</label>
                    <input type="password" class="form-control" id="InputPassword1" name="passwordHash" value="123456">
                </div>
                <div class="mb-3">
                    <button type="submit" class="btn btn-dark" style="width: 100%;">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>