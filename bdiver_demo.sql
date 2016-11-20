-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2016 at 07:52 PM
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
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `tickets_available` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `details`, `location`, `date`, `tickets_available`, `price`, `payment_method`, `created_at`) VALUES
(5, 'Development Space', '<p>Hoodie deep v stumptown, squid tattooed bushwick la croix ennui coloring book. Bespoke farm-to-table banh mi, church-key subway tile crucifix yr single-origin coffee hammock tousled +1 marfa mumblecore dreamcatcher man braid. Health goth heirloom af vaporware, neutra raw denim tumeric 8-bit kogi freegan before they sold out wolf readymade lomo air plant. Neutra keytar gastropub health goth vexillologist, man braid cliche subway tile master cleanse umami lumbersexual woke hoodie. Fingerstache beard chia retro marfa readymade cliche ethical. Organic iceland wolf intelligentsia glossier. 3 wolf moon tattooed pinterest, chillwave vexillologist succulents you probably haven\'t heard of them bicycle rights mlkshk pabst tousled master cleanse.</p>\r\n<p>Snackwave quinoa vexillologist four dollar toast polaroid, flexitarian brunch mlkshk kickstarter pork belly craft beer viral etsy ennui. Biodiesel PBR&amp;B photo booth taxidermy yuccie stumptown cornhole, vape viral bespoke pitchfork beard pug woke hoodie. Echo park irony roof party, fam butcher fashion axe master cleanse fanny pack gastropub organic hammock selvage activated charcoal flexitarian. Listicle kale chips YOLO, fingerstache yr mumblecore stumptown meggings chicharrones chambray food truck. Gluten-free 3 wolf moon organic, pop-up unicorn migas vexillologist trust fund twee. Paleo tumblr hell of woke tofu letterpress messenger bag, kitsch health goth direct trade sriracha. Lo-fi shoreditch slow-carb, unicorn retro helvetica single-origin coffee pop-up health goth skateboard.</p>\r\n<p>Schlitz skateboard shabby chic chia. Poutine put a bird on it edison bulb hoodie gochujang tumeric. Plaid ugh migas jianbing air plant. Franzen pickled street art seitan, +1 schlitz mumblecore pork belly literally. Ennui tote bag godard forage, cornhole trust fund occupy kitsch celiac four loko authentic tofu hashtag roof party pok pok. Tattooed offal lumbersexual poutine distillery, gochujang YOLO snackwave chicharrones XOXO vice retro cornhole. Raw denim irony lo-fi knausgaard ugh yuccie.</p>\r\n<p>Pinterest retro neutra, franzen food truck woke hashtag swag jean shorts VHS bushwick gluten-free deep v pop-up vexillologist. Kickstarter kitsch quinoa post-ironic kale chips. Gluten-free cliche occupy jean shorts mixtape hot chicken. Taxidermy synth next level hexagon umami thundercats. Try-hard cray VHS, farm-to-table lumbersexual master cleanse austin godard ennui put a bird on it vape kale chips keffiyeh bicycle rights vexillologist. Fanny pack yuccie blog yr, trust fund retro vegan. Biodiesel selfies lomo, single-origin coffee post-ironic copper mug forage readymade skateboard kale chips kombucha fam migas synth flannel.</p>', 'Hurgada', '2016-11-23', 13, NULL, NULL, '2016-11-19 13:32:05'),
(6, 'With Photo', '', 'Hurgada', '2016-11-25', 2, NULL, NULL, '2016-11-19 13:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
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

INSERT INTO `posts` (`id`, `title`, `content`, `slug`, `photo`, `user_id`, `timestamp`) VALUES
(1, 'New Post', 'Raclette vice try-hard quinoa lo-fi edison bulb tattooed, hell of cronut salvia ennui cold-pressed letterpress. Skateboard synth lyft, air plant gastropub copper mug lumbersexual. Irony meh knausgaard master cleanse. Paleo hexagon godard jean shorts, ugh af 3 wolf moon freegan cornhole listicle lumbersexual pinterest. Woke cronut food truck farm-to-table. Cray you probably haven\'t heard of them cronut meggings, marfa trust fund air plant direct trade woke bushwick chartreuse sustainable organic. XOXO offal cronut gochujang farm-to-table master cleanse.\n\nKale chips keffiyeh sustainable semiotics, kickstarter craft beer bespoke aesthetic vaporware 8-bit squid. Plaid tumblr mlkshk meggings, roof party raw denim green juice single-origin coffee. Activated charcoal hell of hammock, lomo glossier prism cardigan cold-pressed selfies tacos normcore kinfolk trust fund. Taxidermy plaid listicle, af tumblr try-hard blog trust fund. Health goth fashion axe activated charcoal, affogato sustainable vice cray shoreditch asymmetrical la croix hell of helvetica microdosing church-key ramps. DIY tote bag cray tumeric fashion axe, listicle franzen forage leggings everyday carry yuccie disrupt selfies. Leggings normcore craft beer authentic, pabst listicle mlkshk godard vegan put a bird on it gochujang lumbersexual.', 'newpost', 'img.png', 0, '2016-11-18 16:06:48'),
(2, 'asd', 'Mustache gochujang trust fund, pour-over microdosing tbh twee lo-fi forage vice. Gluten-free artisan austin, typewriter ennui gentrify retro lomo unicorn. Try-hard gochujang fanny pack jianbing DIY. Leggings tumeric stumptown coloring book, man braid pok pok paleo 90\'s small batch squid. Brunch butcher edison bulb gentrify live-edge pork belly beard, tumeric vexillologist man bun everyday carry authentic flannel knausgaard deep v. Meh asymmetrical bespoke glossier raw denim tote bag paleo microdosing single-origin coffee disrupt. Woke gluten-free pop-up succulents hammock.\n\nPrism stumptown vice, taxidermy four loko next level keytar jean shorts small batch selvage sustainable try-hard put a bird on it green juice. Hoodie echo park disrupt, hell of stumptown truffaut DIY meggings. Heirloom 90\'s jean shorts godard mixtape drinking vinegar. Kinfolk tacos pabst, you probably haven\'t heard of them mustache vaporware meh raclette scenester poke flexitarian pop-up tousled. Messenger bag small batch kitsch, hell of pok pok 3 wolf moon schlitz pour-over hot chicken raw denim snackwave vaporware irony. Echo park pinterest heirloom retro hell of raw denim. Umami bicycle rights williamsburg meditation lyft.\nOh. You need a little dummy text for your mockup? How quaint.\n\nI bet you’re still using Bootstrap too…', NULL, NULL, 0, '2016-11-18 17:01:53'),
(3, 'new', 'Heirloom truffaut wayfarers PBR&B cred, chartreuse activated charcoal next level ethical tofu synth twee seitan meh. Subway tile fanny pack church-key, cornhole taxidermy pug thundercats butcher. Hoodie microdosing mustache woke, narwhal unicorn whatever butcher next level humblebrag keffiyeh tacos mixtape flannel. Kitsch bicycle rights waistcoat heirloom small batch meditation. Hoodie twee neutra aesthetic biodiesel, authentic raw denim. Master cleanse kickstarter unicorn, waistcoat sartorial DIY try-hard hexagon distillery flannel helvetica. Viral copper mug celiac, scenester salvia chicharrones stumptown shoreditch ugh pour-over shabby chic knausgaard 8-bit.\n\nCornhole pok pok deep v, crucifix echo park unicorn shoreditch fanny pack. Migas post-ironic ramps chartreuse cray before they sold out. Messenger bag skateboard blue bottle kogi. YOLO occupy flexitarian lomo cardigan wayfarers, photo booth man braid artisan butcher bespoke VHS etsy yr. Pok pok pabst knausgaard DIY, tbh health goth cronut kinfolk ramps synth mixtape plaid freegan shabby chic. Irony tumeric next level la croix hell of. Photo booth iceland quinoa pug church-key.\n\nScenester banjo meggings lomo, gluten-free pickled la croix cardigan green juice enamel pin celiac vegan keytar kitsch ethical. Enamel pin butcher fap tattooed, four dollar toast leggings photo booth williamsburg vice pour-over umami fam shabby chic +1. Actually pabst readymade salvia YOLO, mumblecore put a bird on it keytar godard. DIY wolf hoodie flannel, chicharrones glossier letterpress venmo freegan brunch vexillologist. Cray distillery gentrify live-edge. Pork belly schlitz edison bulb kitsch fingerstache air plant. Messenger bag vape hell of, shoreditch irony asymmetrical gluten-free skateboard four loko YOLO cold-pressed kickstarter prism blog mustache.\n\nRetro aesthetic occupy helvetica, narwhal whatever heirloom shoreditch. Cray chia intelligentsia echo park vaporware try-hard. Glossier lumbersexual yuccie portland vegan letterpress, drinking vinegar paleo. Hella everyday carry neutra mlkshk fanny pack. Tote bag chillwave plaid gluten-free lyft, selfies fashion axe. Asymmetrical vape sartorial jianbing, try-hard single-origin coffee lyft brooklyn irony health goth waistcoat migas. Hexagon brooklyn schlitz, 90\'s direct trade four loko umami next level hell of green juice affogato swag.\n\nBrooklyn yuccie organic unicorn. XOXO man bun retro bespoke copper mug gochujang farm-to-table tousled glossier deep v, slow-carb mustache freegan ethical health goth. Next level offal lo-fi slow-carb, live-edge pok pok tilde. Tattooed organic banjo pork belly humblebrag. Mustache man bun four dollar toast mixtape, hammock mlkshk bespoke copper mug chartreuse pork belly hoodie twee fashion axe heirloom. Schlitz echo park etsy craft beer, helvetica franzen gochujang fam blue bottle. Four dollar toast ramps mustache small batch sartorial man braid, migas jianbing before they sold out.\n\nBiodiesel gluten-free try-hard, vaporware sartorial yr subway tile hella pinterest messenger bag scenester man braid keytar fixie plaid. Shabby chic health goth yuccie hashtag, raclette bespoke narwhal art party glossier farm-to-table waistcoat vexillologist. Celiac viral meggings tofu godard heirloom franzen. Ramps man bun vice tote bag, next level artisan chambray meh lomo. Swag readymade subway tile, williamsburg retro messenger bag truffaut chillwave craft beer man bun bicycle rights. Authentic microdosing meditation flannel, readymade man bun squid ethical sartorial neutra aesthetic austin you probably haven\'t heard of them thundercats. Hammock stumptown wolf lyft, raw denim woke austin PBR&B cardigan readymade letterpress.', NULL, NULL, 0, '2016-11-18 18:02:30'),
(4, '13', 'Heirloom truffaut wayfarers PBR&B cred, chartreuse activated charcoal next level ethical tofu synth twee seitan meh. Subway tile fanny pack church-key, cornhole taxidermy pug thundercats butcher. Hoodie microdosing mustache woke, narwhal unicorn whatever butcher next level humblebrag keffiyeh tacos mixtape flannel. Kitsch bicycle rights waistcoat heirloom small batch meditation. Hoodie twee neutra aesthetic biodiesel, authentic raw denim. Master cleanse kickstarter unicorn, waistcoat sartorial DIY try-hard hexagon distillery flannel helvetica. Viral copper mug celiac, scenester salvia chicharrones stumptown shoreditch ugh pour-over shabby chic knausgaard 8-bit.\n\nCornhole pok pok deep v, crucifix echo park unicorn shoreditch fanny pack. Migas post-ironic ramps chartreuse cray before they sold out. Messenger bag skateboard blue bottle kogi. YOLO occupy flexitarian lomo cardigan wayfarers, photo booth man braid artisan butcher bespoke VHS etsy yr. Pok pok pabst knausgaard DIY, tbh health goth cronut kinfolk ramps synth mixtape plaid freegan shabby chic. Irony tumeric next level la croix hell of. Photo booth iceland quinoa pug church-key.\n\nScenester banjo meggings lomo, gluten-free pickled la croix cardigan green juice enamel pin celiac vegan keytar kitsch ethical. Enamel pin butcher fap tattooed, four dollar toast leggings photo booth williamsburg vice pour-over umami fam shabby chic +1. Actually pabst readymade salvia YOLO, mumblecore put a bird on it keytar godard. DIY wolf hoodie flannel, chicharrones glossier letterpress venmo freegan brunch vexillologist. Cray distillery gentrify live-edge. Pork belly schlitz edison bulb kitsch fingerstache air plant. Messenger bag vape hell of, shoreditch irony asymmetrical gluten-free skateboard four loko YOLO cold-pressed kickstarter prism blog mustache.\n\nRetro aesthetic occupy helvetica, narwhal whatever heirloom shoreditch. Cray chia intelligentsia echo park vaporware try-hard. Glossier lumbersexual yuccie portland vegan letterpress, drinking vinegar paleo. Hella everyday carry neutra mlkshk fanny pack. Tote bag chillwave plaid gluten-free lyft, selfies fashion axe. Asymmetrical vape sartorial jianbing, try-hard single-origin coffee lyft brooklyn irony health goth waistcoat migas. Hexagon brooklyn schlitz, 90\'s direct trade four loko umami next level hell of green juice affogato swag.\n\nBrooklyn yuccie organic unicorn. XOXO man bun retro bespoke copper mug gochujang farm-to-table tousled glossier deep v, slow-carb mustache freegan ethical health goth. Next level offal lo-fi slow-carb, live-edge pok pok tilde. Tattooed organic banjo pork belly humblebrag. Mustache man bun four dollar toast mixtape, hammock mlkshk bespoke copper mug chartreuse pork belly hoodie twee fashion axe heirloom. Schlitz echo park etsy craft beer, helvetica franzen gochujang fam blue bottle. Four dollar toast ramps mustache small batch sartorial man braid, migas jianbing before they sold out.\n\nBiodiesel gluten-free try-hard, vaporware sartorial yr subway tile hella pinterest messenger bag scenester man braid keytar fixie plaid. Shabby chic health goth yuccie hashtag, raclette bespoke narwhal art party glossier farm-to-table waistcoat vexillologist. Celiac viral meggings tofu godard heirloom franzen. Ramps man bun vice tote bag, next level artisan chambray meh lomo. Swag readymade subway tile, williamsburg retro messenger bag truffaut chillwave craft beer man bun bicycle rights. Authentic microdosing meditation flannel, readymade man bun squid ethical sartorial neutra aesthetic austin you probably haven\'t heard of them thundercats. Hammock stumptown wolf lyft, raw denim woke austin PBR&B cardigan readymade letterpress.', NULL, NULL, 1, '2016-11-18 20:12:25'),
(5, 'Development Space', 'Heirloom truffaut wayfarers PBR&B cred, chartreuse activated charcoal next level ethical tofu synth twee seitan meh. Subway tile fanny pack church-key, cornhole taxidermy pug thundercats butcher. Hoodie microdosing mustache woke, narwhal unicorn whatever butcher next level humblebrag keffiyeh tacos mixtape flannel. Kitsch bicycle rights waistcoat heirloom small batch meditation. Hoodie twee neutra aesthetic biodiesel, authentic raw denim. Master cleanse kickstarter unicorn, waistcoat sartorial DIY try-hard hexagon distillery flannel helvetica. Viral copper mug celiac, scenester salvia chicharrones stumptown shoreditch ugh pour-over shabby chic knausgaard 8-bit.\n\nCornhole pok pok deep v, crucifix echo park unicorn shoreditch fanny pack. Migas post-ironic ramps chartreuse cray before they sold out. Messenger bag skateboard blue bottle kogi. YOLO occupy flexitarian lomo cardigan wayfarers, photo booth man braid artisan butcher bespoke VHS etsy yr. Pok pok pabst knausgaard DIY, tbh health goth cronut kinfolk ramps synth mixtape plaid freegan shabby chic. Irony tumeric next level la croix hell of. Photo booth iceland quinoa pug church-key.\n\nScenester banjo meggings lomo, gluten-free pickled la croix cardigan green juice enamel pin celiac vegan keytar kitsch ethical. Enamel pin butcher fap tattooed, four dollar toast leggings photo booth williamsburg vice pour-over umami fam shabby chic +1. Actually pabst readymade salvia YOLO, mumblecore put a bird on it keytar godard. DIY wolf hoodie flannel, chicharrones glossier letterpress venmo freegan brunch vexillologist. Cray distillery gentrify live-edge. Pork belly schlitz edison bulb kitsch fingerstache air plant. Messenger bag vape hell of, shoreditch irony asymmetrical gluten-free skateboard four loko YOLO cold-pressed kickstarter prism blog mustache.\n\nRetro aesthetic occupy helvetica, narwhal whatever heirloom shoreditch. Cray chia intelligentsia echo park vaporware try-hard. Glossier lumbersexual yuccie portland vegan letterpress, drinking vinegar paleo. Hella everyday carry neutra mlkshk fanny pack. Tote bag chillwave plaid gluten-free lyft, selfies fashion axe. Asymmetrical vape sartorial jianbing, try-hard single-origin coffee lyft brooklyn irony health goth waistcoat migas. Hexagon brooklyn schlitz, 90\'s direct trade four loko umami next level hell of green juice affogato swag.\n\nBrooklyn yuccie organic unicorn. XOXO man bun retro bespoke copper mug gochujang farm-to-table tousled glossier deep v, slow-carb mustache freegan ethical health goth. Next level offal lo-fi slow-carb, live-edge pok pok tilde. Tattooed organic banjo pork belly humblebrag. Mustache man bun four dollar toast mixtape, hammock mlkshk bespoke copper mug chartreuse pork belly hoodie twee fashion axe heirloom. Schlitz echo park etsy craft beer, helvetica franzen gochujang fam blue bottle. Four dollar toast ramps mustache small batch sartorial man braid, migas jianbing before they sold out.\n\nBiodiesel gluten-free try-hard, vaporware sartorial yr subway tile hella pinterest messenger bag scenester man braid keytar fixie plaid. Shabby chic health goth yuccie hashtag, raclette bespoke narwhal art party glossier farm-to-table waistcoat vexillologist. Celiac viral meggings tofu godard heirloom franzen. Ramps man bun vice tote bag, next level artisan chambray meh lomo. Swag readymade subway tile, williamsburg retro messenger bag truffaut chillwave craft beer man bun bicycle rights. Authentic microdosing meditation flannel, readymade man bun squid ethical sartorial neutra aesthetic austin you probably haven\'t heard of them thundercats. Hammock stumptown wolf lyft, raw denim woke austin PBR&B cardigan readymade letterpress.', NULL, NULL, 1, '2016-11-18 20:19:04'),
(6, 'Test', '<ul>\r\n<li>Heirloom truffaut wayfarers PBR&amp;B cred, chartreuse activated charcoal next level ethical tofu synth twee seitan meh. Subway tile fanny pack church-key, cornhole taxidermy pug thundercats butcher. Hoodie microdosing mustache woke, narwhal unicorn whatever butcher next level humblebrag keffiyeh tacos mixtape flannel. Kitsch bicycle rights waistcoat heirloom small batch meditation. Hoodie twee neutra aesthetic biodiesel, authentic raw denim. Master cleanse kickstarter unicorn, waistcoat sartorial DIY try-hard hexagon distillery flannel helvetica. Viral copper mug celiac, scenester salvia chicharrones stumptown shoreditch ugh pour-over shabby chic knausgaard 8-bit.</li>\r\n<li>Cornhole pok pok deep v, crucifix echo park unicorn shoreditch fanny pack. Migas post-ironic ramps chartreuse cray before they sold out. Messenger bag skateboard blue bottle kogi. YOLO occupy flexitarian lomo cardigan wayfarers, photo booth man braid artisan butcher bespoke VHS etsy yr. Pok pok pabst knausgaard DIY, tbh health goth cronut kinfolk ramps synth mixtape plaid freegan shabby chic. Irony tumeric next level la croix hell of. Photo booth iceland quinoa pug church-key.</li>\r\n</ul>\r\n<p>Scenester banjo meggings lomo, gluten-free pickled la croix cardigan green juice enamel pin celiac vegan keytar kitsch ethical. Enamel pin butcher fap tattooed, four dollar toast leggings photo booth williamsburg vice pour-over umami fam shabby chic +1. Actually pabst readymade salvia YOLO, mumblecore put a bird on it keytar godard. DIY wolf hoodie flannel, chicharrones glossier letterpress venmo freegan brunch vexillologist. Cray distillery gentrify live-edge. Pork belly schlitz edison bulb kitsch fingerstache air plant. Messenger bag vape hell of, shoreditch irony asymmetrical gluten-free skateboard four loko YOLO cold-pressed kickstarter prism blog mustache.</p>\r\n<p>Retro aesthetic occupy helvetica, narwhal whatever heirloom shoreditch. Cray chia intelligentsia echo park vaporware try-hard. Glossier lumbersexual yuccie portland vegan letterpress, drinking vinegar paleo. Hella everyday carry neutra mlkshk fanny pack. Tote bag chillwave plaid gluten-free lyft, selfies fashion axe. Asymmetrical vape sartorial jianbing, try-hard single-origin coffee lyft brooklyn irony health goth waistcoat migas. Hexagon brooklyn schlitz, 90\'s direct trade four loko umami next level hell of green juice affogato swag.</p>\r\n<p><strong>Brooklyn yuccie organic unicorn. XOXO man bun retro bespoke copper mug gochujang farm-to-table tousled glossier deep v, slow-carb mustache freegan ethical health goth. Next level offal lo-fi slow-carb, live-edge pok pok tilde. Tattooed organic banjo pork belly humblebrag. Mustache man bun four dollar toast mixtape, hammock mlkshk bespoke copper mug chartreuse pork belly hoodie twee fashion axe heirloom. Schlitz echo park etsy craft beer, helvetica franzen gochujang fam blue bottle. Four dollar toast ramps mustache small batch sartorial man braid, migas jianbing before they sold out.</strong></p>\r\n<p>Biodiesel gluten-free try-hard, vaporware sartorial yr subway tile hella pinterest messenger bag scenester man braid keytar fixie plaid. Shabby chic health goth yuccie hashtag, raclette bespoke narwhal art party glossier farm-to-table waistcoat vexillologist. Celiac viral meggings tofu godard heirloom franzen. Ramps man bun vice tote bag, next level artisan chambray meh lomo. Swag readymade subway tile, williamsburg retro messenger bag truffaut chillwave craft beer man bun bicycle rights. Authentic microdosing meditation flannel, readymade man bun squid ethical sartorial neutra aesthetic austin you probably haven\'t heard of them thundercats. Hammock stumptown wolf lyft, raw denim woke austin PBR&amp;B cardigan readymade letterpress.</p>', NULL, NULL, 1, '2016-11-18 21:49:04'),
(7, 'Test', '<ul>\r\n<li>Heirloom truffaut wayfarers PBR&amp;B cred, chartreuse activated charcoal next level ethical tofu synth twee seitan meh. Subway tile fanny pack church-key, cornhole taxidermy pug thundercats butcher. Hoodie microdosing mustache woke, narwhal unicorn whatever butcher next level humblebrag keffiyeh tacos mixtape flannel. Kitsch bicycle rights waistcoat heirloom small batch meditation. Hoodie twee neutra aesthetic biodiesel, authentic raw denim. Master cleanse kickstarter unicorn, waistcoat sartorial DIY try-hard hexagon distillery flannel helvetica. Viral copper mug celiac, scenester salvia chicharrones stumptown shoreditch ugh pour-over shabby chic knausgaard 8-bit.</li>\r\n<li>Cornhole pok pok deep v, crucifix echo park unicorn shoreditch fanny pack. Migas post-ironic ramps chartreuse cray before they sold out. Messenger bag skateboard blue bottle kogi. YOLO occupy flexitarian lomo cardigan wayfarers, photo booth man braid artisan butcher bespoke VHS etsy yr. Pok pok pabst knausgaard DIY, tbh health goth cronut kinfolk ramps synth mixtape plaid freegan shabby chic. Irony tumeric next level la croix hell of. Photo booth iceland quinoa pug church-key.</li>\r\n</ul>\r\n<p>Scenester banjo meggings lomo, gluten-free pickled la croix cardigan green juice enamel pin celiac vegan keytar kitsch ethical. Enamel pin butcher fap tattooed, four dollar toast leggings photo booth williamsburg vice pour-over umami fam shabby chic +1. Actually pabst readymade salvia YOLO, mumblecore put a bird on it keytar godard. DIY wolf hoodie flannel, chicharrones glossier letterpress venmo freegan brunch vexillologist. Cray distillery gentrify live-edge. Pork belly schlitz edison bulb kitsch fingerstache air plant. Messenger bag vape hell of, shoreditch irony asymmetrical gluten-free skateboard four loko YOLO cold-pressed kickstarter prism blog mustache.</p>\r\n<p>Retro aesthetic occupy helvetica, narwhal whatever heirloom shoreditch. Cray chia intelligentsia echo park vaporware try-hard. Glossier lumbersexual yuccie portland vegan letterpress, drinking vinegar paleo. Hella everyday carry neutra mlkshk fanny pack. Tote bag chillwave plaid gluten-free lyft, selfies fashion axe. Asymmetrical vape sartorial jianbing, try-hard single-origin coffee lyft brooklyn irony health goth waistcoat migas. Hexagon brooklyn schlitz, 90\'s direct trade four loko umami next level hell of green juice affogato swag.</p>\r\n<p><strong>Brooklyn yuccie organic unicorn. XOXO man bun retro bespoke copper mug gochujang farm-to-table tousled glossier deep v, slow-carb mustache freegan ethical health goth. Next level offal lo-fi slow-carb, live-edge pok pok tilde. Tattooed organic banjo pork belly humblebrag. Mustache man bun four dollar toast mixtape, hammock mlkshk bespoke copper mug chartreuse pork belly hoodie twee fashion axe heirloom. Schlitz echo park etsy craft beer, helvetica franzen gochujang fam blue bottle. Four dollar toast ramps mustache small batch sartorial man braid, migas jianbing before they sold out.</strong></p>\r\n<p>Biodiesel gluten-free try-hard, vaporware sartorial yr subway tile hella pinterest messenger bag scenester man braid keytar fixie plaid. Shabby chic health goth yuccie hashtag, raclette bespoke narwhal art party glossier farm-to-table waistcoat vexillologist. Celiac viral meggings tofu godard heirloom franzen. Ramps man bun vice tote bag, next level artisan chambray meh lomo. Swag readymade subway tile, williamsburg retro messenger bag truffaut chillwave craft beer man bun bicycle rights. Authentic microdosing meditation flannel, readymade man bun squid ethical sartorial neutra aesthetic austin you probably haven\'t heard of them thundercats. Hammock stumptown wolf lyft, raw denim woke austin PBR&amp;B cardigan readymade letterpress.</p>', NULL, NULL, 1, '2016-11-18 21:49:04'),
(8, 'With Photo', '<p>Photo&nbsp;</p>', NULL, NULL, 6, '2016-11-18 23:56:16'),
(9, 'With Photo2', '<p>With Photo2With Photo2</p>', NULL, '473708.', 6, '2016-11-19 00:02:32'),
(10, 'With Photo3', '<p>With Photo2With Photo2</p>', NULL, '245162.', 6, '2016-11-19 00:04:25'),
(11, 'With Photo4', '<p>With Photo2With Photo2</p>', NULL, NULL, 6, '2016-11-19 00:09:13'),
(12, 'Hello', '<p><img src="https://s3.amazonaws.com/SocialMouths/how_to_add_facebook_comments_to_your_blog.jpg" alt="" width="275" height="242" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Hello</p>', NULL, NULL, 6, '2016-11-19 00:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`) VALUES
(1, 'Mou', 'root@s.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', NULL, NULL),
(4, 'Muhamed Mohsen', 'mohamed.mohhsen011@gmail.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', NULL, NULL),
(5, 'Muhammed Mohsen', 'muhammedagag@gmail.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', NULL, NULL),
(6, 'Cairo', 'muhammedagag1@gmail.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 1093813396, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
