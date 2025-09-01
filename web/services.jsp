<%-- 
    Document   : services
    Created on : 17 Apr, 2025
    Author     : swapn
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Our Services</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: #f4f6f9;
        }

        .marquee {
            background: linear-gradient(90deg, #007bff, #00bcd4);
            color: white;
            padding: 12px 0;
            font-size: 1.2em;
            font-weight: bold;
            text-shadow: 1px 1px 2px black;
        }

        .slider {
            position: relative;
            width: 100%;
            height: 350px;
            overflow: hidden;
            margin-bottom: 30px;
        }

        .slider img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            position: absolute;
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }

        .slider img.active {
            opacity: 1;
        }

        .services-heading {
            text-align: center;
            font-size: 2.2rem;
            margin-bottom: 30px;
            color: #343a40;
        }

        .services-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
            padding: 20px 40px;
        }

        .service-card {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .service-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 20px rgba(0,0,0,0.2);
        }

        .service-card img {
            width: 100%;
            height: 160px;
            object-fit: cover;
        }

        .service-card-content {
            padding: 15px;
            text-align: center;
        }

        .service-card-content h3 {
            margin: 10px 0;
            color: #007bff;
            font-size: 1.2rem;
        }

        .service-card-content p {
            font-size: 0.95rem;
            color: #555;
        }

        footer {
            text-align: center;
            padding: 15px;
            background-color: #343a40;
            color: white;
            font-size: 0.9rem;
        }

        @media screen and (max-width: 600px) {
            .services-container {
                padding: 10px;
            }
        }
    </style>
</head>
<body>

<!-- 🔔 Marquee -->
<marquee behavior="scroll" direction="left" class="marquee">
    🚀 Welcome to Our Engineering Portal! Explore campus services, results, scholarships, CET scores, and much more 🎓
</marquee>

<!-- 🎞️ Image Slider -->
<div class="slider">
    <img src="images/stud info.jpg" alt="Student Info" class="active">
    <img src="images/College Details.jpg" alt="College Info">
    <img src="images/Our Goals.jpg" alt="Goals">
    <img src="images/Scholarships.jpg" alt="Scholarships">
    <img src="images/Exam Results.jpg" alt="Results">
    <img src="images/ CET Score Info.jpg" alt="CET Scores">
</div>

<!-- 🧩 Services Section -->
<h2 class="services-heading">Our Services</h2>
<div class="services-container">
   <div class="service-card">
    <img src="images/stud info.jpg" alt="Student Info">
    <div class="service-card-content">
        <h3><i class="fas fa-user-graduate"></i> Student Info</h3>
        <p>Access student records, academic status, attendance & more.</p>
        <p><strong>Additional Info for students and parents:</strong> Our platform offers seamless integration with student portals for real-time updates on grades, course progress, and assignments.</p>
    </div>
</div>

<div class="service-card">
    <img src="images/College Details.jpg" alt="College Info">
    <div class="service-card-content">
        <h3><i class="fas fa-university"></i> College Details</h3>
        <p>Explore departments, facilities, events & infrastructure.</p>
        <p><strong> Information for all future enginneers:</strong> Get detailed maps, department contact information, and virtual tours of our state-of-the-art facilities, including labs, sports areas, and libraries.</p>
    </div>
</div>

<div class="service-card">
    <img src="images/Our Goals.jpg" alt="Goals">
    <div class="service-card-content">
        <h3><i class="fas fa-bullseye"></i> Our Goals</h3>
        <p>Discover our vision and objectives in education & innovation.</p>
        <p><strong>Build your own future:</strong> Our goals focus on cultivating critical thinking, innovation, and community service among students, empowering them to excel in their careers.</p>
    </div>
</div>

<div class="service-card">
    <img src="images/Scholarships.jpg" alt="Scholarships">
    <div class="service-card-content">
        <h3><i class="fas fa-hand-holding-usd"></i> Scholarships</h3>
        <p>Info on merit-based and need-based scholarship programs.</p>
        <p><strong>Additional Info:</strong> We offer a range of scholarships, including those based on academic excellence, financial need, and extracurricular achievements. Apply easily through our online portal.</p>
    </div>
</div>

<div class="service-card">
    <img src="images/Exam Results.jpg" alt="Results">
    <div class="service-card-content">
        <h3><i class="fas fa-chart-line"></i> Exam Results</h3>
        <p>View past exam results and academic performance charts.</p>
        <p><strong>score:</strong> Stay up-to-date with the latest results, track your performance over the semesters, and view comparative analysis with other students.</p>
    </div>
</div>

<div class="service-card">
    <img src="images/CET Score Info.jpg" alt="CET Scores">
    <div class="service-card-content">
        <h3><i class="fas fa-file-alt"></i> CET Score Info</h3>
        <p>Check out CET cut-offs and college-wise admission stats.</p>
        <p><strong>CET score:</strong> Get real-time updates on CET scores, check cut-offs for various programs, and get personalized admission guidance.</p>
    </div>
</div>

<div class="service-card">
    <img src="images/Placement Cell.jpg" alt="Placements">
    <div class="service-card-content">
        <h3><i class="fas fa-briefcase"></i> Placement Cell</h3>
        <p>Learn about top recruiters, job training, and placement stats.</p>
        <p><strong>Get palce by own Efforts:</strong> Our placement cell offers mock interviews, resume building workshops, and internships to prepare you for the best job opportunities.</p>
    </div>
</div>

<div class="service-card">
    <img src="images/Admission Process.jpg" alt="Admissions">
    <div class="service-card-content">
        <h3><i class="fas fa-id-card"></i> Admission Process</h3>
        <p>Know about eligibility, counseling, document verification.</p>
        <p><strong>Additional Info:</strong> The admission process is streamlined with online counseling, document submission, and fee payment options for a smooth experience.</p>
    </div>
</div>

<div class="service-card">
    <img src="images/Faculty Info.jpg" alt="Faculty">
    <div class="service-card-content">
        <h3><i class="fas fa-chalkboard-teacher"></i> Faculty Info</h3>
        <p>Meet our experienced faculty members and departments.</p>
        <p><strong>Contact us:</strong> Learn more about our renowned faculty who bring diverse expertise and industry experience, making your academic journey enriched and engaging.</p>
    </div>
</div>

<div class="service-card">
    <img src="images/Contact & Support.jpg" alt="Support">
    <div class="service-card-content">
        <h3><i class="fas fa-headset"></i> Contact & Support</h3>
        <p>Reach out for academic queries, complaints & helpdesk.</p>
        <p><strong>Contact Plaease:</strong> We offer 24/7 support through live chat, email, and phone to assist with academic concerns, technical issues, and student life inquiries.</p>
    </div>
</div>

    </div>
</div>

<!-- 🌐 Footer -->
<footer>
    &copy; 2025 Our Educational Portal | All rights reserved.
</footer>

<!-- 📽️ Slider Script -->
<script>
    let currentSlide = 0;
    const slides = document.querySelectorAll(".slider img");

    function showSlide(index) {
        slides.forEach((slide, i) => {
            slide.classList.remove("active");
            if (i === index) slide.classList.add("active");
        });
    }

    function nextSlide() {
        currentSlide = (currentSlide + 1) % slides.length;
        showSlide(currentSlide);
    }

    setInterval(nextSlide, 4000);
</script>

</body>
</html>
