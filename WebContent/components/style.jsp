<style>
  @import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@100;200;300&family=Poppins:wght@100;200;300;500&family=Roboto:wght@300;400&family=Tektur&display=swap");

  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Poppins", sans-serif;
  }

  body {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    width: 100%;
  }

  .home {
    background-image: url(assests/Background.jpg);
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    width: 100%;
  }

  header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 20px 100px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 2;
    background: rgba(31, 37, 37, 0.2);
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
    backdrop-filter: blur(5px);
    -webkit-backdrop-filter: blur(5px);
    border: 1px solid rgba(255, 255, 255, 0.3);
  }

  .logo {
    position: relative;
    font-size: 2em;
    color: #fff;
    user-select: none;
    font-family: "Tektur", cursive;
  }

  .navigation {
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 40px;

    .btnLogin-popup {
      width: 130px;
      height: 50px;
      background: inherit;
      border: 2px solid #fff;
      outline: none;
      border-radius: 6px;
      cursor: pointer;
      font-size: 1.1em;
      color: #fff;
      font-weight: 500;
      margin-left: 40px;
      transition: 0.5s;
    }

    .btnLogin-popup:hover {
      background-color: #fff;
      color: #162938;
    }
  }

  .navigation a {
    position: relative;
    font-size: 1.1em;
    color: #fff;
    text-decoration: none;
    font-weight: 500;
  }

  .navigation a::after {
    content: "";
    position: absolute;
    width: 100%;
    height: 3px;
    background-color: #fff;
    border-radius: 5px;
    left: 0;
    bottom: -6px;
    transform: scaleX(0);
    transform-origin: right;
    transition: transform 0.5s;
  }

  .navigation a:hover::after {
    transform-origin: left;
    transform: scaleX(1);
  }

  .wrapper {
    position: relative;
    width: 400px;
    height: 440px;
    background: transparent;
    border: 2px solid rgba(255, 255, 255, 0.5);
    border-radius: 20px;
    backdrop-filter: blur(20px);
    box-shadow: 0 0 30px rgba(0, 0, 0, 0.5);
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
    transform: scale(0);
    transition: transform 0.5s ease, height 0.2s ease;
  }

  .wrapper.active-popup {
    transform: scale(1);
  }

  .wrapper.active {
    height: 520px;
  }

  .wrapper .form-box.login {
    transition: transform 0.5s ease;
    transform: translateX(0);
  }

  .wrapper.active .form-box.login {
    transition: transform 0.5s ease;
    transform: translateX(-400px);
  }

  .wrapper .form-box.register {
    position: absolute;
    transition: none;
    transform: translateX(400px);
  }

  .wrapper.active .form-box.register {
    transition: transform 0.5s ease;
    transform: translateX(0);
  }

  .wrapper .form-box {
    width: 100%;
    padding: 40px;
  }

  .wrapper .icon-close {
    position: absolute;
    top: 0;
    right: 0;
    width: 45px;
    height: 45px;
    background-color: #162938;
    font-size: 2em;
    color: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
    border-bottom-left-radius: 20px;
    cursor: pointer;
    z-index: 0;
  }

  .form-box h2 {
    font-size: 2em;
    color: #162938;
    text-align: center;
  }

  .input-box {
    position: relative;
    width: 100%;
    height: 50px;
    border-bottom: 2px solid #162938;
    margin: 15px 0;
  }

  .input-box label {
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    font-size: 1em;
    color: #162938;
    font-weight: 500;
    pointer-events: none;
    transition: 0.5s;
  }

  .input-box input:focus~label,
  .input-box input:valid~label {
    top: -5px;
  }

  .input-box input {
    width: 100%;
    height: 100%;
    background: transparent;
    outline: none;
    border: none;
    font-size: 1em;
    color: #162938;
    font-weight: 600;
    padding: 0 35px 0 5px;
  }

  .input-box .icon {
    position: absolute;
    right: 8px;
    margin-top: 12px;
    font-size: 1.5rem;
    color: #162938;
    line-height: 57px;
  }

  .remember-forgot {
    width: 100%;
    font-size: 0.9em;
    color: #162938;
    font-weight: 500;
    margin: -15px 0 15px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .remember-forgot label {
    display: flex;

    justify-content: center;
    align-items: center;
  }

  .remember-forgot label input {
    width: 20px;
    margin-top: 20px;
    accent-color: #162938;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .remember-forgot a {
    color: #162938;
    text-decoration: none;
  }

  .remember-forgot a:hover {
    text-decoration: underline;
  }

  .btn {
    width: 100%;
    height: 45px;
    background: #162938;
    border: none;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1em;
    color: #fff;
    font-weight: 500;
  }

  .login-register {
    font-size: 0.9em;
    display: flex;
    justify-content: space-around;
    align-items: center;
    color: #162938;
    font-weight: 500;
    margin: 25px 0 10px;
  }

  .login-register p a {
    color: #162938;
    text-decoration: none;
    font-weight: 600;
  }

  .login-register p a:hover {
    text-decoration: underline;
  }

  .hero {
    position: absolute;
    z-index: -100;
  }

  #hero {
    position: absolute;
    max-width: 1200px;
    margin: 0 auto;
    padding: 40px;

    .container {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      padding: 10px;
      color: #162938;
    }
  }

  #hero .container h1 {
    font-size: 4rem;
    color: #fff;
    margin-bottom: 10px;
  }

  #hero .container p {
    font-size: 2rem;
    color: #fff;
    margin-bottom: 10px;
  }

  .button-56 {
    align-items: center;
    background-color: #162938;
    border: 2px solid #111;
    border-radius: 8px;
    box-sizing: border-box;
    color: #fff;
    cursor: pointer;
    display: flex;
    font-family: "Poppins", sans-serif;
    font-size: 20px;
    height: 48px;
    justify-content: center;
    line-height: 24px;
    max-width: 100%;
    padding: 0 25px;
    position: relative;
    text-align: center;
    text-decoration: none;
    user-select: none;
    -webkit-user-select: none;
    touch-action: manipulation;
    transition: all 0.5s;
  }

  .button-56:hover {
    outline: 0;
    color: #162938;
    background-color: #fff;
  }

  @media (min-width: 768px) {
    .button-56 {
      padding: 0 40px;
    }
  }

  #features {
    background-color: #d4d7db;
    text-align: center;
    padding: 80px 0;
  }

  #features h2 {
    font-size: 30px;
    color: #222;
    margin-bottom: 40px;
  }

  #features ul {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    list-style: none;
  }

  #features li {
    width: 300px;
    margin: 10px;
  }

  /* How It Works section styles */
  #how-it-works {
    background-color: #394855;
    text-align: center;
    padding: 80px 0;
    width: 100%;
  }

  #how-it-works h2 {
    font-size: 30px;
    color: #e2e2e2;
    margin-bottom: 40px;
  }

  .steps {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
  }

  .step {
    flex: 0 0 25%;
    padding: 20px;
  }

  .step img {
    width: 80px;
    margin-bottom: 20px;
  }

  .step h3 {
    font-size: 24px;
    color: #ccc;
    margin-bottom: 10px;
  }

  .step p {
    color: rgb(182, 181, 181);
  }

  /* Pricing section styles */
  #pricing {
    background-color: #d4d7db;
    width: 100%;
    text-align: center;
    padding: 80px 0;
  }

  #pricing h2 {
    font-size: 30px;
    color: #222;
    margin-bottom: 20px;
  }

  .plans {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
  }

  .plan {
    width: 300px;
    margin: 20px;
    padding: 20px;
    background-color: #162938;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);

    .button {
      font-size: 1.2rem;
      cursor: pointer;
      background-color: #162938;
      color: #fff;
      border: 1px solid #fff;
      padding: 5px 10px;
      border-radius: 20px;
      transition: all 0.5s;
    }

    .button:hover {
      background-color: #fff;
      color: #162938;
    }

    .adjust {
      margin-top: 35px;
    }
  }

  .plan h3 {
    font-size: 24px;
    color: #fff;
    margin-bottom: 10px;
  }

  .plan p {
    font-size: 18px;
    color: #818181;
    margin-bottom: 18px;
  }

  .plan ul {
    text-align: left;
    margin-bottom: 20px;
    list-style: none;
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding: 10px;
  }

  .plan ul li {
    margin-bottom: 10px;
    color: #ccc;
  }

  /* Contact section styles */
  #contact {
    background-color: #394855;
    width: 100%;
    text-align: center;
    padding: 80px 0;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
  }

  #contact h2 {
    font-size: 30px;
    color: #f2f2f2;
    margin-bottom: 40px;
  }

  #contact p {
    color: #ccc;
    margin-bottom: 40px;
  }

  form {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    width: 100%;
  }

  form input,
  form textarea {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }

  form button {
    padding: 12px 30px;
    background-color: #162938;
    color: #fff;
    border: none;
    border-radius: 5px;
    text-transform: uppercase;
    cursor: pointer;
    transition: all 0.5s;
  }

  form button:hover {
    background-color: #fff;
    color: #111;
  }

  /* Footer styles */
  footer {
    background-color: #427faa;
    width: 100%;
    color: #fff;
    text-align: center;
    padding: 20px;
  }

  /* Responsive styles */
  @media screen and (max-width: 768px) {
    #hero h1 {
      font-size: 28px;
    }

    .btn-primary,
    .btn-secondary {
      font-size: 14px;
      padding: 10px 20px;
    }

    #features li {
      width: 100%;
    }

    .steps .step {
      flex: 0 0 50%;
    }

    .plan {
      width: 100%;
    }
  }
</style>