<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
	integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="all_component/style.css" />

<style>
/* Default navbar link */
.navbar-nav .nav-link {
  color: #ffffff !important; /* white text */
  font-weight: 500;
  font-size: 1rem;
  padding: 8px 15px;
  border-radius: 6px;
  position: relative;
  transition: all 0.3s ease;
}

/* Hover: invert colors */
.navbar-nav .nav-link:hover,
.navbar-nav .nav-link.active {
  background-color: #ffffff; /* invert background */
  color: #1a237e !important; /* invert text (deep navy to match your theme) */
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
  transform: translateY(-2px);
}

/* Add underline animation */
.navbar-nav .nav-link::after {
  content: "";
  position: absolute;
  left: 15%;
  bottom: 6px;
  width: 0%;
  height: 2px;
  background-color: #1a237e; /* underline matches text color */
  transition: width 0.3s ease;
}

.navbar-nav .nav-link:hover::after {
  width: 70%;
}

</style>