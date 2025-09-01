<%-- 
    Document   : enquire
    Created on : 16 Apr, 2025, 1:54:42 AM
    Author     : swapn
ref : style css anf collges.jsp 
--%>


<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>College Enquiry and Information</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
   
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }

        header {
            background-color: #004f7c;
            padding: 20px;
            text-align: center;
            color: #fff;
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
        }

        .section {
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .section h2 {
            text-align: center;
            color: #004f7c;
        }

        .cutoff-year-links {
            text-align: center;
            margin: 20px;
        }

        .cutoff-year-links a {
            margin: 0 10px;
            text-decoration: none;
            color: #004f7c;
            font-weight: bold;
            padding: 5px 10px;
            border: 2px solid #004f7c;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .cutoff-year-links a:hover {
            background-color: #004f7c;
            color: #fff;
        }

        .state-colleges {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 30px;
            margin: 20px 0;
        }

        .state-college {
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            border: 2px solid #f0f0f0;
            transition: transform 0.3s ease;
        }

        .state-college:hover {
            transform: translateY(-10px);
        }

        .state-college h4 {
            color: #004f7c;
        }

        .state-college p {
            font-size: 1.1em;
            color: #555;
        }

        .scholarship-section {
            margin: 30px 0;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .scholarship-category {
            margin: 20px 0;
        }

        .scholarship-category h3 {
            color: #004f7c;
        }

        .scholarship-category ul {
            list-style-type: none;
            padding-left: 0;
        }

        .scholarship-category li {
            margin: 10px 0;
            font-size: 1.1em;
            color: #555;
        }

        .scholarship-category a {
            text-decoration: none;
            color: #004f7c;
            font-weight: bold;
        }

        .scholarship-category a:hover {
            text-decoration: underline;
        }
    </style>
</head>



<body>

    <header>
        <h1>Engineering College Information Portal</h1>
    </header>

    <!-- Section: Top Private Engineering Colleges Cutoff -->
    <div class="section">
        <h2>Top Private Engineering Colleges (Last 5 Years' Cutoff)</h2>
        <div class="cutoff-year-links">
            <a href="javascript:void(0);" onclick="showColleges('2024')">2024</a>
            <a href="javascript:void(0);" onclick="showColleges('2023')">2023</a>
            <a href="javascript:void(0);" onclick="showColleges('2022')">2022</a>
            <a href="javascript:void(0);" onclick="showColleges('2021')">2021</a>
            <a href="javascript:void(0);" onclick="showColleges('2020')">2020</a>
        </div>
        <div id="college-results"></div>
    </div>

    <!-- Section: Total Number of Private Engineering Colleges by State -->
    
    
    <div class="section">
        <h2>Total Number of Private Engineering Colleges by State</h2>
      <div class="section">
    <div class="state-colleges">
        <div class="state-college">
            <h4>Maharashtra</h4>
            <p>682 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Tripura</h4>
            <p>4 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Tamil Nadu</h4>
            <p>795 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Uttar Pradesh</h4>
            <p>472 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Delhi</h4>
            <p>382 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Karnataka</h4>
            <p>317 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Andhra Pradesh</h4>
            <p>304 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Madhya Pradesh</h4>
            <p>262 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Gujarat</h4>
            <p>219 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Haryana</h4>
            <p>211 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Telangana</h4>
            <p>208 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Rajasthan</h4>
            <p>204 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Punjab</h4>
            <p>197 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Kerala</h4>
            <p>162 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Odisha</h4>
            <p>129 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Uttarakhand</h4>
            <p>82 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Chhattisgarh</h4>
            <p>68 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Jharkhand</h4>
            <p>59 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Himachal Pradesh</h4>
            <p>41 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Bihar</h4>
            <p>40 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Assam</h4>
            <p>24 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Chandigarh</h4>
            <p>18 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Jammu and Kashmir</h4>
            <p>8 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Arunachal Pradesh</h4>
            <p>7 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Goa</h4>
            <p>5 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Meghalaya</h4>
            <p>5 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Nagaland</h4>
            <p>5 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Sikkim</h4>
            <p>5 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Manipur</h4>
            <p>3 Colleges</p>
        </div>
        <div class="state-college">
            <h4>Andaman and Nicobar Islands</h4>
            <p>1 College</p>
        </div>
        <div class="state-college">
            <h4>Mizoram</h4>
            <p>1 College</p>
        </div>
    </div>
</div>


    <!-- Section: Scholarships -->
    <!-- Section: Scholarships -->
<style>
    .section {
        font-family: Arial, sans-serif;
        padding: 20px;
        background-color: #f4f9ff;
        border-radius: 10px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }
    .scholarship-section h2 {
        color: #2c3e50;
        font-size: 28px;
        margin-bottom: 20px;
    }
    .scholarship-category {
        margin-bottom: 30px;
    }
    .scholarship-category h3 {
        color: #34495e;
        font-size: 22px;
        margin-bottom: 10px;
        text-decoration: underline;
    }
    .scholarship-category ul {
        list-style-type: none;
        padding-left: 0;
    }
    .scholarship-category li {
        background: #ffffff;
        margin-bottom: 10px;
        padding: 10px 15px;
        border-left: 5px solid #2980b9;
        border-radius: 5px;
    }
    .scholarship-category a {
        font-weight: bold;
        color: #2980b9;
        text-decoration: none;
    }
    .scholarship-category a:hover {
        text-decoration: underline;
    }
</style>

<div class="section scholarship-section">
    <h2>Scholarships</h2>

    <div class="scholarship-category">
       <div class="section scholarship-section">
    <h2>🎓 Available Scholarships</h2>

    <div class="scholarship-category">
        <h3>For Day Scholars / Hostellers</h3>
        <ul>
            <li>
                <a href="https://mahadbt.maharashtra.gov.in/Login" target="_blank">1) MAHA-DBT</a><br>
                Central portal for Maharashtra scholarships with direct bank transfers for SC, ST, OBC, etc.
            </li>
            <li>
                <a href="https://mahadbt.maharashtra.gov.in/SchemeData/SchemeData?str=E9DDFA703C38E51A3160277BCF2AA7C6" target="_blank">2) Rajarshi Chhatrapati Shahu Maharaj Merit Scholarship</a><br>
                ₹300/month for 10 months — for 11th & 12th VJNT/SBC students with 75%+ in 10th.
            </li>
            <li>
                <a href="https://www.annauniv.edu/scstcell/scholarship.html" target="_blank">3) Graduate Scholarship (SC Top Class)</a><br>
                Sponsored by Ministry of Social Justice; covers full academic expenses for SC students.
            </li>
            <li>
                <a href="https://harchhatravratti.highereduhry.ac.in/Index" target="_blank">4) Har-Chhatravratti</a><br>
                Haryana-based scholarship portal combining 16 state schemes under one roof.
            </li>
            <li>
                <a href="https://www.momascholarship.gov.in" target="_blank">5) Ministry of Minority Affairs (MOMA)</a><br>
                Offers Pre-Matric, Post-Matric & Merit-cum-Means scholarships for minority communities.
            </li>
            <li>
                <a href="https://scholarships.gov.in/ApplicationForm/login" target="_blank">6) National Scholarship Portal (NSP)</a><br>
                Unified platform for central/state scholarships — MHRD, UGC, AICTE supported.
            </li>
        </ul>
    </div>

    <div class="scholarship-category">
        <h3>Special Scholarships for Orphans</h3>
        <ul>
            <li>
                <a href="http://kssm.ikm.in/" target="_blank">1) Snehapoorvam Scholarship</a><br>
                Kerala government scholarship for orphaned children studying in govt. or aided schools.
            </li>
            <li>
                <a href="https://www.buddy4study.com/scholarship/dr-s-s-prabhu-scholarship" target="_blank">2) Dr. S.S. Prabhu Scholarship</a><br>
                Helps orphan students pursuing higher education with academic and hostel support.
            </li>
            <li>
                <a href="https://www.lpu.in/scholarship/scholarship-for-orphan-applicants.php" target="_blank">3) LPU Orphan Financial Aid</a><br>
                Full/partial tuition waiver for orphans not legally adopted.
            </li>
            <li>
                <a href="https://www.buddy4study.com/scholarship/nemi-chand-jain-scholarship" target="_blank">4) Nemi Chand Jain Scholarship</a><br>
                Merit-cum-need-based award for underprivileged or orphan students.
            </li>
            <li>
                <a href="https://scholarshiplearn.com/digjyoti-scholarship/" target="_blank">5) Digjyoti Scholarship 2023</a><br>
                Provides support for orphans and poor students based on need and merit.
            </li>
        </ul>
    </div>
       
</div>


    <script>
        function showColleges(year) {
            // Define the data for each year (2024-2020)
            const results = {
                '2024': [
                    'College A - 95%',
                    'College B - 92%',
                    'College C - 90%',
                    'College D - 88%',
                    'College E - 87%',
                    'College F - 85%',
                    'College G - 83%',
                    'College H - 80%',
                    'College I - 78%',
                    'College J - 75%'
                ],
                '2023': [
                    'College A - 94%',
                    'College B - 91%',
                    'College C - 89%',
                    'College D - 86%',
                    'College E - 84%',
                    'College F - 82%',
                    'College G - 80%',
                    'College H - 77%',
                    'College I - 75%',
                    'College J - 72%'
                ],
                '2022': [
                    'College A - 93%',
                    'College B - 90%',
                    'College C - 88%',
                    'College D - 85%',
                    'College E - 83%',
                    'College F - 80%',
                    'College G - 78%',
                    'College H - 76%',
                    'College I - 74%',
                    'College J - 70%'
                ],
                '2021': [
                    'College A - 91%',
                    'College B - 88%',
                    'College C - 85%',
                    'College D - 83%',
                    'College E - 80%',
                    'College F - 78%',
                    'College G - 75%',
                    'College H - 72%',
                    'College I - 70%',
                    'College J - 65%'
                ],
                '2020': [
                    'College A - 90%',
                    'College B - 87%',
                    'College C - 85%',
                    'College D - 82%',
                    'College E - 80%',
                    'College F - 77%',
                    'College G - 75%',
                    'College H - 72%',
                    'College I - 70%',
                    'College J - 68%'
                ]
            };

            // Get the result container where college data will be shown
            const resultContainer = document.getElementById('college-results');

            // Clear any existing content in the result container
            resultContainer.innerHTML = '';

            // Add a header for the selected year
            resultContainer.innerHTML = `<h4>Top 10 Private Engineering Colleges for ${year}:</h4><ul>`;

            // Loop through and display the results
            results[year].forEach(college => {
                resultContainer.innerHTML += `<li>${college}</li>`;
            });

            // Close the list
            resultContainer.innerHTML += '</ul>';
       
