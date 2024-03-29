<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <link rel="icon" href="IMAGE/T.png" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Đăng ký - TriVie</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <link rel="stylesheet" href="style/Register.css" />
</head>

<body>
  <div class="container-fluid text-center main">
    <div class="row row-cols-2 ">

      <div class="col info">
        <form action="Xuly/xulyRegister.php" id="register" method="post">
          <h2><strong>Bắt đầu với <span style="color: var(--logo-Tri-custom);">Tri</span><span
                style="color: var(--logo-Vie-custom);">Vie</span></strong></h2>
          <div class="icon-btn">
            <div class="icon"><i class="fab fa-google"></i></div>
            <div class="icon"><i class="fab fa-facebook"></i></div>
          </div>
          Điền thông tin

          <div class="input"></div>
          <div class="form-floating mb-3">
            <input type="text" class="form-control form-input" id="floatingInput" name="id_user"
              placeholder="tên đăng nhập">
            <label for="floatingInput">Tên đăng nhập</label>
            <div class="emptynoti"></div>
          </div>
          <div class="emptynoti"></div>
          <input type="Date" class="form-control" id="floatingDateInput" name="birth_user"
            placeholder="name@example.com">
          <select name="gender_user" id="" class="form-control">
            <option value="-1">Giới tính</option>
            <option value="0">Nữ</option>
            <option value="1">Nam</option>
            <option value="2">Không rõ</option>
          </select>
          <div class="form-floating mb-3">
            <input type="password" class="form-control" id="floatingPassword" name="pass_user" placeholder="Password">
            <label for="floatingPassword" id="preg">Mật khẩu</label>
          </div>
          <div class="emptynoti"></div>
          <div class="form-floating mb-3">
            <input type="password" class="form-control " id="floatingRetypePassword" name="retype_pass_user"
              placeholder="Password">
            <label for="floatingPassword" id="retype">Nhập Lại Mật khẩu</label>
          </div>
          <span><input type="checkbox" id="policy" name="policy_user" style="width: 16px; height: 16px;">&nbsp;&nbsp;
            Tôi đồng ý với <a href="">Điều khoản</a> của ứng dụng.</span>
          <input type="submit" class="form-control confirm" id="btnDK" value="Đăng ký" name="dangKy">
        </form>
      </div>

      <div class="col banner">
        <img src="IMAGE/banner-log-vertical.jpg" alt="">
      </div>
    </div>
  </div>

</body>

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/js/all.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
  $(document).ready(function () {
    var form = document.getElementById('register');
    form.addEventListener('submit', function (event) {
      var checkInputs = document.getElementById('register').querySelectorAll('input');
      var empty = document.getElementsByClassName('emptynoti');
      var pass = document.getElementById('floatingPassword').value;
      var repass = document.getElementById('floatingRetypePassword').value;
      checkInputs.forEach(function (input) {
        if (input.value.trim() === "") {
          event.preventDefault();
          input.classList.add('is-invalid');
        }
        else {
          input.classList.remove('is-invalid');
        }
      });
      if (pass !== repass) {
        event.preventDefault();
        $('#floatingRetypePassword').addClass('is-invalid');
        $('#retype').text('Mật khẩu không trùng khớp').css({ 'color': 'red', 'font-size': '15px', 'float': 'left' });
      }
      if(pass.length < 6){
        event.preventDefault();
        $('#floatingPassword').addClass('is-invalid');
        $('#preg').text('Mật khẩu phải chứa ít nhất 6 kí tự').css({ 'color': 'red', 'font-size': '15px', 'float': 'left' });
      }
    });
  });
</script>

</html>