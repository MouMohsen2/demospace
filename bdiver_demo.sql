-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2016 at 12:38 AM
-- Server version: 5.7.16-0ubuntu0.16.10.1
-- PHP Version: 7.0.8-3ubuntu3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdiver_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `tickets` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `user_id`, `event_id`, `tickets`) VALUES
(1, 2, 3, 1),
(2, 2, 2, 1),
(3, 2, 1, 2),
(4, 2, 4, 2),
(5, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `tickets_available` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT 'Cash',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `title`, `details`, `location`, `date`, `tickets_available`, `price`, `payment_method`, `created_at`) VALUES
(1, 'Dive Camp: Ras Mohamed', '<p><img src="https://scontent-vie1-1.xx.fbcdn.net/v/t1.0-9/14572131_1191395534273348_4159453296495789110_n.jpg?oh=e760cbfd2f24072f312f562f59bd2ed4&amp;oe=58CC8B9D" alt="" width="851" height="315" /></p>\r\n<p>&nbsp;</p>\r\n<p style="text-align: center;">The magnificent dive sites of Ras Mohamed are sure to have you hypnotised underwater. Learn to dive in under 4 days, with NO experience required! Or you can just enjoy a relaxing break camping and enjoying our activities on the gorgeous coast of the Red Sea. BDiver at Ras Mohamed has been a top hit and we urge early registration and payment. Check out the pictures and you\'ll know why!<br /><br />Please secure your place with early booking.<br /><br />Become a PADI internationally certified diver in just under 4 days (no experience required)!<br /><br /><br /></p>', 'Ras Muhammad National Park', '2016-11-30', 18, 1200, 'Cash', '2016-11-21 19:59:17'),
(2, 'Abo Galoum - Protected Area', '<p style="text-align: center;"><img src="https://scontent-vie1-1.xx.fbcdn.net/v/t1.0-9/14364690_1179997948746440_4800326899390090046_n.jpg?oh=21f10d16d52d73be4ad5b9b52c3a1645&amp;oe=588AB499" alt="" width="851" height="315" /></p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;">Long weekend y\'all!<br /><br />Learn to dive in under 4 days, with NO experience required! Or you can just enjoy a relaxing break camping on the gorgeous coast of the Red Sea. We will arrive at Abo Galoum, rest and quickly get things rolling with under the sea activities and more! We will also spend our last day in Dahab where you can immerse yourself in the city&rsquo;s beauty. </p>\r\n<p style="text-align: center;">Long weekend y\'all!<br /><br />Learn to dive in under 4 days, with NO experience required! Or you can just enjoy a relaxing break camping on the gorgeous coast of the Red Sea. We will arrive at Abo Galoum, rest and quickly get things rolling with under the sea activities and more! We will also spend our last day in Dahab where you can immerse yourself in the city&rsquo;s beauty. <br /><br />Become a PADI internationally certified diver in just under 4 days (no experience required)!</p>', 'Abo Galoum - Protected Area', '2016-12-29', 19, 1500, 'Cash', '2016-11-21 20:06:31'),
(3, 'Rescue Diver and EFR Course', '<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://scontent-vie1-1.xx.fbcdn.net/v/t1.0-9/13509046_1110680215678214_4229942696972257416_n.jpg?oh=68f842c39819bf7ccfb3504d16a6466e&amp;oe=58BA4ABD" alt="" width="960" height="355" /></p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;">Who are we?<br />- DIVERS!<br /><br />What do we want?<br />- RESCUE DIVER COURSE!<br /><br />Where do we want it?<br />- DAHAB!<br /><br />Inclusions<br />* Four nights accommodation (Bed &amp; Breakfast)<br />* Full Gear<span class="text_exposed_show"><br />* Tanks &amp; Weights<br />* Course Material<br />* License</span></p>\r\n<p style="text-align: center;"><span class="text_exposed_show"><br />&gt;In order to receive your rescue course, you need to be EFR certified.<br /><br />Exclusions<br />* Transportation is not available for this trip.<br /></span></p>', 'Dahab', '2017-01-10', 17, 2700, 'Cash', '2016-11-21 20:08:08'),
(4, 'Eid Trip at Marsa Allam (Dive, Relax and More!)', '<p><img src="https://scontent-vie1-1.xx.fbcdn.net/v/t1.0-9/13418993_1100076496738586_3605201219882520004_n.png?oh=5c275409cd2c1b8bbe2ce9ea94d7a039&amp;oe=58C12E7B" alt="" width="851" height="315" /></p>\r\n<p>&nbsp;</p>\r\n<p>It\'s Ramadan and some of us have been fasting. There\'s a huge appetite during Eid! So that\'s why we\'re going to Marsa Allam; with lots of activities, diving, relaxation and fooooood!<br /><br />Full open buffet for breakfast, lunch and dinner so you can enjoy the luxury of good food while you still spend the days camping on the gorgeous coast of the Red Sea. We\'ve got the best of both! You can spend the days relaxing or you can learn to dive in under 4 days, with NO experience required!<br /><br />Please note that since this is a high season, places will run out fast. Secure your booking with early payment.</p>', 'Marsa Alam', '2016-07-06', 18, 1600, 'Cash', '2016-11-21 20:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `content`, `slug`, `photo`, `user_id`, `timestamp`) VALUES
(1, 'Advanced Open Water Diver: Search and Recovery', '<p>You&rsquo;re on vacation and your favorite sunglasses are feeling a bit loose. As you take them off to see what&rsquo;s wrong, you notice that the tiny screw attaching one of the arms to the lens has worked its way nearly all the way out. While you&rsquo;re staring at it, relieved that it&rsquo;s an easy fix, it pops out and absolutely disappears in the sand between your legs. Your stomach goes cold and panic sets in, you just &ldquo;know&rdquo; that all is lost.</p>\n<p>Then your PADI Advanced Open Water Diver training kicks in. You remember the Search and Recovery dive and the first thing you do is mark the most likely location of your screw with a handy bottle top. Calmly, you make sure that nothing disturbs the area and you start a careful visual search in a series of expanding circles around the bottle cap, on the third pass you see something tiny glint in the sunlight and there it is.</p>\n<p>Many of the skills you&rsquo;ll learn in the PADI Advanced Open Water Diver course have application far beyond diving. Search and Recovery is a great example. It&rsquo;s not so much the specific search patterns you learn but the overall approach and discipline that really make a difference and help with myriad day-to-day situations.</p>\n<p>&nbsp;</p>\n<p>During the Search and Recovery dive your instructor will help you learn an approach to finding and recovering an object underwater (within certain limits, this is not about raising the QE2). That&rsquo;s not an easy task and success is among the most rewarding experiences you&rsquo;re likely to have.</p>\n<p>The first thing you&rsquo;ll do is define, and mark, a search area. Then, depending on a number of factors including object size, visibility and bottom conditions, you&rsquo;ll decide on a specific search pattern. Once you find the object, after letting out an underwater whoop, you&rsquo;ll either put it in your pocket or mark it for later recovery.</p>\n<p>The recovery is great fun too. Using a lift bag and a few reliable knots you&rsquo;ll bring an object (such as a small outboard motor) to the surface and onto the shore or boat. You&rsquo;ll find that the knots you learn and use (the bowline, sheet bend and two half hitches) are remarkably useful for many purposes such as loading a roof rack, rigging a canopy or tarp for a party. They&rsquo;re secure and easy to untie even after being put under a big load for an extended time. The Search and Recovery dive will help you say farewell to the ubiquitous and truly terrible granny knot forever.</p>\n<p>Don&rsquo;t forget that the Search and Recovery dive is only the tip of the iceberg: There&rsquo;s a great deal more to learn in the associated Search and Recovery Specialty course and the dive you just made counts towards that certification too.</p>\n</div>\n</div>', NULL, NULL, 1, '2016-11-21 20:23:54'),
(2, 'Ocean Acidification â€“ Double Whammy for Coral Reefs', '<p><img src="http://www2.padi.com/blog/wp-content/uploads/2016/11/coral-acidification.jpg" alt="" width="1000" height="667" /></p>\r\n<p>&nbsp;</p>\r\n<p>Since the Industrial Revolution in the middle of the eighteenth century, human activity has had an increasingly significant effect on climate, in particular by adding billions of tons of carbon dioxide and other gasses to the atmosphere. These so called greenhouse gasses contribute to global warming, rising sea temperatures and coral bleaching. Ok. Not good, but at least nothing new.</p>\r\n<p>Until about 10 years ago, the fact that the oceans absorbed perhaps 30 percent of these greenhouse gasses was considered a good thing (which it is from a blinkered global warming perspective). Even today, you&rsquo;ll find the ocean playing the role of a &ldquo;carbon sink&rdquo; hero in models describing global warming. But the hero is paying the price.</p>\r\n<h3>Ocean Acidification</h3>\r\n<p>On top of rising water temperatures and coral bleaching, the oceans are becoming more acidic every year. Ocean acidification is the other, less well-known, consequence of too much carbon dioxide in the atmosphere. The basic problem is that as the oceans absorb more and more carbon dioxide, a series of chemical reactions occur which ultimately cause a reduction in carbonate ions.</p>\r\n<p>These ions are important building blocks for seashells and coral skeletons. With less of these available, building and maintaining calcium carbonate structures becomes increasingly difficult. If ocean acidification goes far enough, and there are predictions that it may, it can actually dissolve calcium carbonate based structures.</p>\r\n<p>&nbsp;</p>\r\n<p><img src="http://www2.padi.com/blog/wp-content/uploads/2016/11/coral-reef-dying.jpg" alt="" width="1000" height="667" /></p>\r\n<p>&nbsp;</p>\r\n<h3>Negative Impact</h3>\r\n<p>Already, for example in the Pacific Northwest, the impact of ocean acidification is being felt. Here, starting in 2008, the oyster industry experienced losses of oyster larvae significant enough to actually threaten the viability of the industry. It&rsquo;s not that their shells are dissolving, but the oyster larvae have to expend too much energy early on to build their shells in a more acidic environment.</p>\r\n<p>And in Florida, in the heart of some of the best diving in the USA, researchers have found that reef dissolution is a significant problem on reefs in the upper Keys.&nbsp; The loss of limestone during the winter months (when coral growth rate slows) exceeds what the corals can produce annually. The result? These coral reefs are starting to waste away.</p>', NULL, NULL, 1, '2016-11-21 20:28:24'),
(3, 'Sixth Sense: Underwater Exploration', '<p><img src="http://www2.padi.com/blog/wp-content/uploads/2016/11/Swimming-through-Interstellar-tunnel-1024x576.png" /></p>\r\n<p>Proving the word &ldquo;impossible&rdquo; has no place in her vocabulary, it didn&rsquo;t take long before Cristina Zenato, the woman credited with finding the connection between Mermaid Pond and Chimney Cave, located on Grand Bahama, to set her sights on the Zodiac system, another system of underwater caves, waterways and tunnels located at Sweetings Cay, east of Grand Bahama.</p>\r\n<p>Zenato credits consistency and trusting her instincts with her previous success. To date, the PADI<sup>&reg;</sup> Course Director and NSS-CDS Cave Diving Instructor at Underwater Explorers Society has explored the seven different entrances of the Zodiac system and already uncovered a connection between Aquarius, fed by the ocean creek, to Gemini, which comes out into a salt water lake. Just shy of one year on the project and she&rsquo;s already proven that once again, nothing is impossible.</p>\r\n<p><img src="http://www2.padi.com/blog/wp-content/uploads/2016/11/entering-another-room-maze-1024x768.jpg" /></p>\r\n<p>&ldquo;Every once in a while I&rsquo;d go east to dive the caves for fun because they are so gorgeous,&rdquo; Zenato says. &ldquo;By looking at the way the water travels, I was able to connect two caves and then I started finding more and more caves.&rdquo;</p>\r\n<p>With the Mermaid Pond/Chimney Cave connection taking five years to complete, Zenato knows she&rsquo;s still years away from discovering all the connections and tunnels that make up the Zodiac system.&nbsp; &ldquo;Maybe even taking forever,&rdquo; she laughs.</p>\r\n<p>For Zenata, conservation is the real drive behind her exploration efforts.</p>', NULL, NULL, 1, '2016-11-21 20:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `phone`, `address`, `admin`) VALUES
(1, 'John Roe', 'admin@example.com', 'd82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892', 1093813396, 'Cairo, Egypt', 1),
(2, 'Johnny Doe', 'user@example.com', 'e172c5654dbc12d78ce1850a4f7956ba6e5a3d2ac40f0925fc6d691ebb54f6bf', 1234567890, 'Smouha, Alexandria', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `event_id_2` (`event_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
