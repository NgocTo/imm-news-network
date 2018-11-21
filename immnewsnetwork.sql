-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2018 at 03:10 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `immnewsnetwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `authorId` int(11) NOT NULL,
  `preview` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `categoryId` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT '',
  `isFeatured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `authorId`, `preview`, `content`, `categoryId`, `image`, `url`, `isFeatured`) VALUES
(1, 'The Puzzle of Home Page Design', 2, 'Home page design isn’t just about headers, content, and footers. It is about asking the right questions and making sure those questions apply to your website visitors. It’s about finding solutions to problems and bringing it together within a cohesive design.', 'Have You Ever Wondered?\r\nHow do I make my website memorable?\r\nHow do I make sure people stick when they hit my home page?\r\nHow do I make sure website visitors dig into my content and explore my product or service offering?\r\nHow do I make sure website visitors take a moment to reach out to us by email, phone, or inquiry form?\r\nIf you read those questions and thought “yes that is exactly what I want to ask” then know you’re not alone. I know a lot of people, marketing departments, and companies who all wonder the same about the design and function of their website.\r\n\r\nIf you take a step back and read through the list, you’ll notice all the questions included I or me. None of them focused on the visitor.\r\n\r\nBest Practice in Home Page Doesn’t Include Me or I\r\nBest practice in home page design is about website visitors, their needs, and their wants.  It isn’t about an idea that is cool or something you may have seen on four other websites. It is about your target market, what they need, and how your offering can help.\r\n\r\nWe receive a number of inquiries each day from people who’d like us to help create a new website or update their existing website. In most cases the inquiries go a little like this:\r\n\r\nI am inquiring to see if I can get a price for you to redo our current website. Please have a look at the link to website provided and get back to me.\r\nWe are considering upgrading our website. Are you able to help us?\r\nI would like a website that looks exactly like XYZ.com. Can you create that for me?\r\nI would like my website to be more professional, can you please help?\r\nCan you look at my website and tell me what needs to change?\r\nI know my website is a mess and I’d like you to clean it up.\r\nA lot of individuals and organizations tend to design websites according to their own needs or they base it on a website they’ve visited and liked. Or, in more recent years, they think of a cool internet marketing idea and want to implement it.\r\n\r\nAll of this is fine, but what they many times fail to do is compare this idea or need for update to what their website visitors need and want. I’ve found this is especially true if the website is brand-new and the idea is referred to as “cool.”\r\n\r\nHave You Ever Asked Yourself?\r\nWho comes to my website?\r\nAre these visitors all similar or are they broken up into groups (website personas)?\r\nWhat problems do these people have and what issues are they trying to solve?\r\nCan my product or service offering solve these problems?\r\nWhat content do I have that can best articulate my solution and provide assistance?\r\nWhat next step should the website visitor take so I can help solve their issues?\r\nHow can the visitor and I stay in touch with each other?\r\nCan the visitor easily contact me?\r\nWhat we’ve done is simply take the original questions and redirect them so they are more focused on the visitor. This task is easy, but many times overlooked.\r\n\r\nNow take those above questions and apply them to your existing website. How does your website answer those questions? If it doesn’t, it is time for a refresh.\r\n\r\nWhat Should You Consider in Your Website Refresh?\r\nThere are lots of elements that go into the core design of a website. I’m not talking about each and every page. Instead I’m referring to the main design elements, home page, header and footer.\r\n\r\nBelow is a list of some website design elements we review, discuss, and plan for in early stages of our projects:\r\n\r\nElements of a Website Header:\r\n\r\nLogo\r\nTagline\r\nSocial media icons and/or references\r\nSearch box\r\nPrimary navigation menu (core destinations)\r\nSecondary navigation menu (secondary destinations such as account or login)\r\nElements of the Core Home Page:\r\n\r\nRotator or static image\r\nVideo\r\nSite introduction or overview\r\nFeatured content\r\nPersona call out and directions for movement\r\nCall to actions\r\nPromotions and/or deals\r\nRecent blog posts\r\nUpcoming events\r\nElements of a Website Footer:\r\n\r\nWidgets for lists to core content\r\nContact information\r\nSite navigation to sitemap, policies, terms and conditions\r\nDisclaimers or legal notices\r\nCopyright\r\nThat’s a lot stuff right? Yes it is and why I don’t expect new clients to have answers for all of the items in the list, it would be great if they’ve thought through some of it and how each would provide assistance for their target market and visitors.\r\n\r\nIf they haven’t, I’m happy to walk through it with them and dissect the different elements and how they can help provide solutions for visitors.\r\n\r\nWeb Design is a Puzzle\r\nI recently had a friend tell me that I’m a fan of puzzles. I’ve never believed that to be the case, but once I thought about it for a minute, I knew he was spot on. I do like puzzles. Thinking back in time I remember spending endless hours with the Rubik’s Cube, Missing Link, and the Pyraminx Pyramid Puzzle. I solved all three and to the surprise of my parents, I mastered the Rubik’s Cube rather quickly.\r\n\r\nAs an adult I still like puzzles,  but now I like puzzles with a purpose.\r\n\r\nI fell in love with SEO years ago because it was a puzzle. Trying to figure out what the search engines wanted and how it would alter ranking was fun. Google has become a lot more transparent, so the puzzle is no longer as challenging. As such, it has completely removed the fun factor for me.\r\n\r\nMy love for puzzles is now focused on website design. For me, the puzzle is understanding our client’s target market, their visitors’ needs, their offering, and then making it all come together through website design. That puzzle changes with each new client and each new website. It stays fun each and every time.', 2, 'img/rubik.jpg', 'https://www.web-savvy-marketing.com/2014/04/puzzle-home-page-design/', 0),
(2, 'How to Work With a Recruiter to Land Your First Job', 4, 'Your first job is a coveted golden ticket: a salary, benefits, and a clearer career path. But, the search for your first job can be daunting.', 'Your first job is a coveted golden ticket: a salary, benefits, and a clearer career path. But, the search for your first job can be daunting. So to make it a bit easier it’s important to find allies. From career counselors, to your parents, an alumni network and recruiters, there are a lot of people out there who can help you snag a wonderful position.\r\n\r\nRecruiters, in particular, are an untapped resource that often intimidate new graduates. While it can be nerve-wracking to connect with someone who can make or break your chance at a role, the more skilled you are at building these relationships, the more successful you’ll be.\r\n\r\nErin Doyon, now a Talent Acquisition Consultant at Philips, worked with students for 15 years to help them land jobs, first by facilitating co-op programs at Northeastern University and UMass Lowell, before transitioning to Campus Recruiting at Philips. In each capacity, Erin worked one-on-one with early-career professionals as a coach, partner, and advocate. Here’s her wisdom on how to leverage a relationship with a recruiter to land your first job:\r\n\r\n\r\nOptimize Your Resume and Cover Letter\r\nWith the sheer volume of resumes recruiters receive for every job posting, you need to stand out in the digital pile. As Erin says, “A resume is your billboard. You need to catch my attention if you want me to watch your advertisement.” Recruiters like Erin use application tracking systems, which leverage keyword technology to narrow down “matches\" between a job description and a candidate.\r\n\r\nTo get to the top of the pile, use a tool like Jobscan to identify keywords to use to optimize your resume and cover letter. Or, you could do it the old-fashioned way and pick out key skills, requirements, and responsibilities in a job description and add the exact phrasing to your own application materials, assuming they are a match to your personal experience and background.\r\n\r\nSometimes, recruiters look for geographical matches, so indicate that you’re willing to move to the specific city where the job is located in your application, too. Then, use these tips to make sure your resume hits all the right notes.\r\n\r\n\r\nCommunicate Your Interests and Goals\r\nOnce you’re past the initial resume scan, and you’ve moved to a brief screening call, be clear about what you’re looking for. It’s nearly impossible for a recruiter to help you land your dream job if you haven’t clarified your goals.\r\n\r\nSpend time uncovering and articulating your interests and intentions for a career. “Think about where you want to be in five years and about what you want to do to get there,” says Erin. “If you want to be the CEO, you have to map out how to get there and have a long-term plan.”\r\n\r\nLeverage your LinkedIn and start networking. Reach out to alumni in your desired field and ask them if they have a few minutes to hop on a call—or if you could buy them a cup of coffee. Remember to make it as easy as possible for them by adjusting to their schedule, calling them (rather than the other way around), and preparing specific questions.\r\n\r\nOnce you’ve done your research, a recruiter can be your matchmaker. “These professionals know all about the company, all about the divisions and all about the team,” says Erin. Even if you’re not the perfect fit for the job you applied for, you may be the right match for another position—and the recruiter can steer you in that direction.\r\n\r\n\r\nMake It Easy for Recruiters to Advocate for You\r\nThere’s one big thing most professionals don\'t realize about recruiters. It’s their job to sell the best candidates to the hiring manager—but you can help make that job easier. The more succinct, relevant information you give recruiters, the more likely they are to push for you at every stage of the process.\r\n\r\nErin calls this approach “humble assertiveness.” She says, “Be willing to do anything, especially because the stereotype of the millennial is that they’re too good for some entry level jobs. This dream job you want comes from dedication and enthusiasm.”\r\n\r\nThis starts with your thank you email after a screening call. Within a couple hours, follow up with a note of appreciation and three or four snippets about why you’re great for the role. That information makes it easy for a recruiter to advocate for you in conversations with the hiring manager.', 1, 'img/first-job.png', 'https://www.themuse.com/advice/how-to-work-with-recruiter-to-land-your-first-job', 0),
(3, 'Why recruiters aren’t reading your resume', 5, 'Have you ever applied to dozens of jobs online, only to hear nothing back, not even a whisper of interest? You’re not alone. Turns out it’s not too far from the truth. Only about 2% of candidates who apply for a job go on to secure an interview. Before you get too depressed at that statistic, there’s some good news: there are some things you can do to beat the odds.', 'you didn’t include any keywords\r\nKeywords are words and phrases that you want to be associated with, professionally. Automated screening tools are used to automatically search the text in your resume to identify these words and identify you as a possible match for the job that the recruiter is trying to fill. Skills and software that you use frequently at work make great keywords. The more frequently you repeat each keyword in your resume, the better, as more repetition equals a stronger match. However don’t go overboard. Your resume should still be readable and professional so when a human reads your resume it makes sense. Finding the right balance is crucial, as you often need to get past the initial screening before a person will even see your resume. A resume with no keywords can land in the ‘no’ pile even if you’re perfect for the role. However, you still need an engaging resume that will appeal to a hiring manager after it passes the initial screening.\r\n\r\nit can’t be read by resume screening tools\r\nIt might not seem fair that your resume could get weeded out just because you saved it in the wrong format, but we live in a world where technology is an important consideration. And in the world of recruiting, applicant tracking systems (ATS) are used by some companies to pre-screen resumes and search for specific keywords. This is intended to narrow down the amount of resumes recruiters end up reading and save time. Sometimes that means your resume can be cut, even if you’re perfect for the job. Make sure that your resume is saved as a Word document or a text-readable PDF. You do not want a resume that’s made of a flat image, for instance, a jpg or a print-only PDF, because text can’t be parsed on those types of documents.\r\n\r\nthe design you chose is off-putting\r\nIf your resume looks like it belongs to a children’s cartoon character, you might be running into some resistance from recruiters. Avoid resumes with sparkles, scents, too many fonts or colours, or any other extra design elements. Creative designs can be a mark in the positive column and make your resume stand out, but there’s a caveat: you have to know what you’re doing. Overzealous resume designs can quickly backfire and put you out of the running for a job before a recruiter even reads your resume. When in doubt stick to a simple design, or better yet download a template. There are tons of options available online for free.\r\n\r\nit has glaring typos\r\nLook, in the era of spellcheck, there’s absolutely no excuse for not thoroughly reading and editing your resume. Typos look unprofessional and sloppy and if they’re really obvious indications you haven’t read your own resume thoroughly. Run any text you plan to put on your resume through Word or another word processor with spellcheck. If nothing else, there’s always Google. A quick search will turn up plenty of free spellcheck tools to help you clean up your resume. And while you\'re at it, why not check out our guide on editing your resume like a professional proofreader. Being extra careful never hurts.\r\n\r\nit’s too long or too short\r\nYes, there’s a happy medium that recruiters look for in resume length. Somewhere in the 1-2 page range is usually safe. Using only half of a page says you don’t have any brag-worthy credentials to share or simply didn’t care enough to write a detailed account of your work history. Taking up 3-4 pages indicates that you have no filter and don’t possess the very important skill of being able to edit yourself and zero in on your most important skills. Some people will tell you that a single-page resume is the best option, but most recruiters won’t disregard a resume that’s 2 pages.\r\n\r\nit doesn’t match the job description\r\nAny recruiter will tell you than a resume that closely mirrors the job description will be more successful. Too many people go for quantity over quality, using a single resume to apply to hundreds of roles, hoping that a few will stick. Instead of wasting your time applying to countless roles you aren’t really sure if you want (or perhaps haven’t even read!) spend a little more time on applications for jobs you actually want. Seek out roles you’re excited about that correlate with your skills and job expectations. Then take a little time to ensure your resume is tailored to reflect the skills and requirements in the job description. Hiring managers usually include their wishlist of ideal skills and qualifications in the job description (they don’t always expect candidates to have them all!) so if you can show that you have a lot of these ideal qualities you can position yourself as a shoo-in for the role.\r\n\r\nit doesn’t stand out\r\nThe average job posted online receives over 100 applications. That’s a lot of other people to be competing with! If your resume blends into the pack and looks like the other 99 applications that the recruiter received, there’s a good chance that your resume is going to end up being passed over. Make sure that your resume has a little of your personality in it. We’re not saying you have to go overboard with crazy colours and fonts (please don’t!) to draw attention, but a tastefully unique design, or a splash of personality or humour can go a long way to making your resume a little bit different than the norm. This is especially true if you’re working in a creative field. When you’re competing with so many other people, as is the case with online job applications, drawing a little attention is crucial. Just ensure that once you’ve got a recruiter’s attention that you follow through with a well-executed resume that includes all the necessary info.\r\n\r\nyou’re not telling a story\r\nPeople love stories. Consider social media. Check out your feed and I’m sure you’ll find a few heartwarming stories about pets or people helping others that have an outrageous number of shares and likes. Stories appeal to our emotions, tug on our heart strings and paint a picture. The same is true of your resume. We’re often taught that our resumes should be a strictly professional document with zero personality or charm. That kind of thinking is outdated. It’s unique resumes that tell a story and paint a picture of where your career has taken you (and where you plan to go next) that stand out and make you an impressive candidate. People aren’t a series of qualifications and skills. Tell your career story, and it’ll transform a bland list of skills into a story that hiring managers can relate to. We’re not advocating swapping out your resume for a short story about your life, but do make sure to include a professional summary or statement that talks about your career path in your own words!\r\n\r\n \r\n\r\nOnce you fix up your resume with the tips above, test out your shiny new resume by applying to jobs in your field. If you’re still having trouble finding a job through online applications, why not connect with one of our recruiters at a branch near you? Our job is to help bring the opportunities to you, and our services are 100% free.', 1, 'img/randstad.jpg', 'https://www.randstad.ca/job-seeker/job-tips/archives/why-recruiters-arent-reading-your-resume_1799/', 0),
(4, 'Eight Web Development Trends Coming In 2018', 6, 'Since its inception, the web has consistently evolved. The early days of Mosaic and Netscape Navigator helped popularize the internet and, since then, each and every year has brought new concepts, ideas and trends -- some good and some bad.', 'Since its inception, the web has consistently evolved. The early days of Mosaic and Netscape Navigator helped popularize the internet and, since then, each and every year has brought new concepts, ideas and trends -- some good and some bad.\r\n\r\nOne important lesson learned from all of those years of changes and trends is that being successful is often related to riding the wave of change rather than following in its wake. You can do that by exploring the trends of tomorrow and then looking to incorporate those that are applicable to you before everyone else does.\r\n\r\nHere are eight web development trends that should have the largest overall impact on the industry in 2018:\r\n\r\nImproved Online Support\r\n\r\n\r\nBeing connected to users is more important than ever. Chatbots, those computer programs which have conversations with us either via text or auditory method, allow a website to have a 24/7 contact point without maintaining a 24-hour customer service department. The evolution of Chatbots has led to things like answering common questions, directing people to information and pages or even how to complete a transaction. As consumers become more comfortable with the idea of a chatbot along with how to interact with them, the expectations for every site having them will increase.\r\n\r\nProgressive Web Apps\r\n\r\nA recent study about mobile usage found that mobile apps account for 89% of total mobile media time. It makes sense then that utilizing a similar format to mobile apps would be well-received by target audiences.\r\n\r\nProgressive web apps are web applications that can appear to users like a mobile application but are truly web pages or websites. They take advantage of the host of features on web browsers but deliver an app-like user experience. There are numerous advantages to this technology such as the ability to work offline, near-instant loading (as much of the information is stored in the cache), reliability and the ability to receive push notifications. They can be built in less time, work for any user and are generally easier to deploy and maintain, all of which are beneficial to developers and consumers alike.\r\n\r\nPush Notification With Websites\r\n\r\nOne of the most powerful tools that a mobile app has is push notifications. The ability to send direct information to a user who provides value has proven to be extremely popular with everything from traffic changes, sports scores or notifications about sales. This type of communication works on websites as well once a user enables push notifications. The benefits are higher engagement without the additional cost of creating a mobile app to replace a website.\r\n\r\nSingle-Page Websites\r\n\r\nThe single-page website trend found its footing this year and should continue to become more common. This design is one long webpage. Navigation is based on scrolling or using links that jump up or down the page to that particular section.\r\n\r\nThe biggest advantage of this type of website is simplicity. There is no complex navigation or deep menu to traverse. And the design works well on mobile devices, where scrolling is a common navigation method. This style provides a modern solution to simple online needs and is inexpensive to develop and host.\r\n\r\nStatic Websites\r\n\r\nA static website is very basic. Each page is simply coded using HTML and displays the same fixed or static content to every user. Why would people want to effectively take a step or three backward in regards to web technology and options? Simplicity.\r\n\r\nThese websites are safe, load quickly and can be cheaply made. Static websites should see a resurgence in use for cost-conscious projects, as they are miles ahead of the original static websites from the web’s infancy, but not nearly as dull or labor-intensive to create.\r\n\r\nMotion User Interface\r\n\r\nInterface has been a top concern for developers for years. Even the best-looking design can be rather pointless if you can’t find the information you need. Originally designed for mobile apps, a mobile user interface allows for the use of animations and transitions to help alert users to actions or important components, along with adding life and style to a project.\r\n\r\nThis technology offers a high degree of customization, which then allows a developer many options to craft a highly functional and stunning site. Some examples of motion would be easing in, overlay, cloning, obscuration, parallax, parenting, dimensionality and offset-delay.\r\n\r\nPhasing Out Flash\r\n\r\nFlash was a very exciting component for websites allowing animation and other motion aspects. While it was commonly used for years, it is now something that everyone should look to phase out. Adobe announced this year that the Flash Player will no longer be updated or distributed after 2020. Additionally, it is incompatible with most types of mobile devices. Rather than losing out on web traffic, especially on your mobile site, you should replace any Flash with HTML5, which is quickly becoming the most common, universal format on the web.\r\n\r\nPhoto Content\r\n\r\nThe value of a good photo has never been higher in web development, primarily because a good photo can help spur conversions. This concept is not a new one as during the heyday of print magazines, great product photos were in high demand to help create conversions simply based on the story an image told. Unique pictures and photos that show individuality while conveying information will be an important key to online success in 2018.\r\n\r\nThe bottom line is that trends will come and go, spurred by the evolution of our technology. These developments can be utilized to both entice and engage new and existing users when applied optimally. That is why it is important to look to the future now for ideas and inspiration so that you can stay ahead of the competition.', 3, 'img/forbes.png', 'https://www.forbes.com/sites/forbesagencycouncil/2017/11/16/eight-web-development-trends-coming-in-2018/#4337133e55d8', 1),
(5, 'Choosing a Technology Stack for Web Application Development', 7, 'What’s the most important thing to consider when you’re developing a top-notch web application? No doubt it’s the technology stack your app will be based upon.\r\n\r\nThe choice of a relevant tech stack is particularly challenging for small businesses and startups, since they usually have limited budgets and, thus, need a technology stack that provides the most bang for the buck to get their projects off the ground.', 'What’s the most important thing to consider when you’re developing a top-notch web application? No doubt it’s the technology stack your app will be based upon.\r\n\r\nThe choice of a relevant tech stack is particularly challenging for small businesses and startups, since they usually have limited budgets and, thus, need a technology stack that provides the most bang for the buck to get their projects off the ground.\r\n\r\nThe right tech stack is, to a great extent, the key to your project’s success, while the wrong choice of web development technologies may be a reason for failure.\r\n\r\nWe’ve decided to give you a helping hand and reveal the criteria for choosing the most appropriate tech stack for your web application.\r\n\r\nWhat Is a Technology Stack For Web Development?\r\nBefore moving on to the criteria for choosing a modern web technology stack, you should clearly understand what comprises the process of web development.\r\n\r\nWithout going too deep into details, there are two sides to web development: the client side and the server side. The client side is also called the front end. Server-side programming involves an application (and a backend programming language that powers it), a database, and the server itself.\r\n\r\nClient-Side Programming\r\nClient-side (i.e. frontend) web development involves everything users see on their screens. Here are the major frontend technology stack components:\r\n\r\nHypertext Markup Language (HTML) and Cascading Style Sheets (CSS). HTML tells a browser how to display the content of web pages, while CSS styles that content. Bootstrap is a helpful framework for managing HTML and CSS.\r\nJavaScript (JS). JS makes web pages interactive. There are many JavaScript libraries (such as jQuery, React.js, and Zepto.js) and frameworks (such as Angular, Vue, Backbone, and Ember) for faster and easier web development.\r\nServer-Side Programming\r\nThe server side isn’t visible to users, but it powers the client side, just as a power station generates electricity for your house.\r\n\r\nThe challenge lies mainly in the choice of server-side technologies for developing your web application.\r\n\r\nAs for server-side programming languages, they are used to create the logic of websites and applications. Frameworks for programming languages offer lots of tools for simpler and faster coding. Let’s mention some of the popular programming languages and their major frameworks (in parentheses):\r\n\r\nRuby (Ruby on Rails)\r\nPython (Django, Flask, Pylons)\r\nPHP (Laravel)\r\nJava (Spring)\r\nScala (Play)\r\nNode.js, a JavaScript runtime, is also used for backend programming.\r\n\r\nYour web application needs a place to store its data, and that’s what a database is used for. There are two types of databases: relational and non-relational (the latter being subdivided into several categories), each having its pros and cons. Here are the most common databases for web development:\r\n\r\nMySQL (relational)\r\nPostgreSQL (relational)\r\nMongoDB (non-relational, document)\r\nA web application needs a caching system to reduce the load on the database and to handle large amounts of traffic. Memcached and Redis are the most widespread caching systems.\r\n\r\nFinally, a web application needs a server to handle requests from clients’ computers. There are two major players in this domain:\r\n\r\nApache\r\nNginx', 3, 'img/technology-stack-diagram.jpg', 'https://rubygarage.org/blog/technology-stack-for-web-development', 0),
(6, 'Best Option for Website SEO', 2, 'Recently, my private Facebook group has received a number of questions asking about SEO and how Squarespace, Wix, and Weebly compare against WordPress. While I provided some initial thoughts on each post that arrived, I knew I needed to dig in further and try each service out for myself. So I did. And then I went further again and added in HubSpot COS, because out group wanted this information as well.', 'Until recently, I hadn’t thought much about website SEO and which website builder was best for supporting search engine optimization efforts and best practices. I’m a WordPress girl after all, and in my head, WordPress is the only option.\r\n\r\nBut recently, my private Facebook group has received a number of questions asking about SEO and how Squarespace, Wix, and Weebly compare against WordPress. While I provided some initial thoughts on each post that arrived, I knew I needed to dig in further and try each service out for myself. So I did. And then I went further again and added in HubSpot COS, because out group wanted this information as well.\r\n\r\nI created a test website in Weebly, Wix, and Squarespace. As I moved through their website build options, I paid close attention to SEO features and I documented options each platform offered. I also obtained access to a live HubSpot COS site so I could dive into this platform’s options for SEO.\r\n\r\nInstead of giving you long-winded posts on each software package, I thought I would provide an overview table that you can scan and see feature comparisons in a quick and efficient manner.\r\n\r\nSo without further ado, below are my results of the website SEO battle of WordPress, Squarespace, Wix, Weebly, and HubSpot COS.\r\n\r\nCMS Comparison of Website SEO Features\r\n\r\nTotal SEO scores by CMS platform:\r\n\r\nWordPress SEO = 39/39\r\nSquarespace SEO = 29/39\r\nWix SEO = 23/39\r\nWeebly SEO = 21/39\r\nHubSpot COS = 37/39\r\nWhile Squarespace did have a lot of functionality, it did lack some major SEO features that I can’t imagine living without.\r\n\r\nSquarespace’s SEO gaps included:\r\n\r\nContent silos\r\nBreadcrumbs\r\nFocused keyword identification\r\nOn-page SEO scoring\r\nLink anchor text\r\nSchema and structured data support\r\nFor the new webmasters, those are not critical items, but they are showstoppers for website owners who rely on search to bring in traffic, leads, sales.\r\n\r\nWix and Weebly are missing out on all of those Squarespace SEO gaps, but these two website builders are also missing the following functionality:\r\n\r\nCanonical links\r\nControl over or proper usage of H1 headers\r\nXML sitemaps\r\nRobot.txt files\r\nTo make matters worse, Wix doesn’t even let you change design templates. You literally have to create a brand new site to modify the design style. Say what? Yep, this perplexes me too.\r\n\r\nWeebly lacked even a few more SEO options that the other three included. These were:\r\n\r\nImage alt text\r\nSubheader control\r\nBlog tags\r\nAMP support\r\nCDN option\r\nWhile I understand the lack of support for AMP, the lack of control on image alt text and ability to add subheaders truly surprised me.\r\n\r\nWhen I went back and added HubSpot COS into our data, I was pleasantly surprised to see it does offer a lot of options for SEO. It doesn’t support Schema and structured data, which I did find surprising given the fact that HubSpot COS is very expensive.\r\n\r\nWordPress, Squarespace, Wix, Weebly, and HubSpot COS Fail to Truly Compare\r\nSo I tried to bust out of my WordPress snob mode and embrace the other CMS packages, but I just can’t do it. I am a serious SEO consultant and I quote SEO consulting packages that require things like content silos and structured data.\r\n\r\nI need these advanced SEO features to compete in search. And I’m not alone.\r\n\r\nIf you put SEO aside, Weebly and Wix did offer the ability to create some decent looking websites with minimal effort. That is great for the microbusiness who doesn’t rely on SEO. Even I know WordPress and its 50,000+ plugins can be overwhelming at times.\r\n\r\nIf you are a first-time website owner, Weebly and Wix might make suitable options. However, if you need to complete in search and you are going to rely on SEO generated traffic, you need to utilize Squarespace or WordPress.\r\n\r\nIf you are looking at the HubSpot options and thinking this might be viable, please oh please consider the true cost of the HubSpot COS platform. It is very pricey and when you see WordPress offers just as many option, it just doesn’t make sense.', 2, 'img/seo.png', 'https://www.web-savvy-marketing.com/2017/08/website-seo-wix-squarespace-wordpress-weebly/', 0),
(23, 'Testa', 1, 'fds', 'fds', 1, 'img/art-black-and-white-collage-383568.jpg', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'Career'),
(2, 'Industry'),
(3, 'Technical');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `interestIndustry` tinyint(1) NOT NULL,
  `interestTechnical` tinyint(1) NOT NULL,
  `interestCareer` tinyint(1) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `firstName`, `lastName`, `email`, `interestIndustry`, `interestTechnical`, `interestCareer`, `role`) VALUES
(1, 'Ngoc', 'To', 'baongoc1308@gmail.com', 1, 1, 1, 1),
(2, 'Ngoc', 'To', 'baongoc1308@gmail.com', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`) VALUES
(1, 'welcome'),
(2, 'about');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'author'),
(3, 'contributor');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `content` varchar(500) NOT NULL,
  `pageId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `subtitle`, `content`, `pageId`) VALUES
(1, 'Welcome to IMM News Network', NULL, 'This is the IMM News Network featuring articles related to the industry, the technical and the career aspect.', 1),
(2, 'About us', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstName`, `lastName`, `role`) VALUES
(1, 'admin', 'admin', 'admin', NULL, 1),
(2, 'rebecca', 'author', 'Rebecca', 'Gill', 2),
(3, 'anonymousauthor', 'author', 'Anonymous Author', NULL, 2),
(4, 'elizabeth', 'author', 'Elizabeth', 'Wellington', 2),
(5, 'randstad', 'author', 'randstad.ca', NULL, 2),
(6, 'ken', 'author', 'Ken', 'Braun', 2),
(7, 'Vlad', 'author', 'Vlad', 'V.', 2),
(9, 'John', 'contributor', 'John', 'Doe', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users-articles`
--

CREATE TABLE `users-articles` (
  `user` int(11) NOT NULL,
  `article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users-articles`
--

INSERT INTO `users-articles` (`user`, `article`) VALUES
(1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
