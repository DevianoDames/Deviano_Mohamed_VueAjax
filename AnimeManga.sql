-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 01, 2024 at 04:43 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AnimeManga`
--

-- --------------------------------------------------------

--
-- Table structure for table `mangakas`
--

CREATE TABLE `mangakas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mangakas`
--

INSERT INTO `mangakas` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Masashi Kishimoto', 'Masashi.Kishimoto@live.com', '2024-03-31 18:42:13', '2024-03-31 18:42:13'),
(2, 'Masashi Kishimoto', 'Masashi.Kishimoto@live.com', '2024-04-01 03:42:05', '2024-04-01 03:42:05'),
(3, 'Masashi Kishimoto', 'Masashi.Kishimoto@live.com', '2024-04-01 03:45:08', '2024-04-01 03:45:08'),
(4, 'Masashi Kishimoto', 'Masashi.Kishimoto@live.com', '2024-04-01 04:10:03', '2024-04-01 04:10:03'),
(5, 'Eiichiro Oda', 'eiichiro.oda@live.com', '2024-04-01 04:14:31', '2024-04-01 04:14:31'),
(6, 'Eiichiro Oda', 'eiichiro.oda@live.com', '2024-04-01 04:16:03', '2024-04-01 04:16:03'),
(7, 'Eiichiro Oda', 'eiichiro.oda@live.com', '2024-04-01 04:17:29', '2024-04-01 04:17:29'),
(8, 'Eiichiro Oda', 'eiichiro.oda@live.com', '2024-04-01 04:18:29', '2024-04-01 04:18:29'),
(9, 'Tite Kubo', 'tite.kubo@outlook.com', '2024-04-01 04:26:47', '2024-04-01 04:26:47'),
(10, 'Tite Kubo', 'tite.kubo@outlook.com', '2024-04-01 04:27:27', '2024-04-01 04:27:27'),
(11, 'Tite Kubo', 'tite.kubo@outlook.com', '2024-04-01 04:28:00', '2024-04-01 04:28:00'),
(12, 'Tite Kubo', 'tite.kubo@outlook.com', '2024-04-01 04:28:23', '2024-04-01 04:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `mangas`
--

CREATE TABLE `mangas` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `mangaka_id` int(11) NOT NULL,
  `published_date` date NOT NULL,
  `manga_image` varchar(125) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `summary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mangas`
--

INSERT INTO `mangas` (`id`, `title`, `mangaka_id`, `published_date`, `manga_image`, `created_at`, `updated_at`, `summary`) VALUES
(1, 'Uzumaki Naruto', 1, '2000-03-03', 'Naruto_vol1.jpg', '2024-03-31 19:02:21', '2024-03-31 19:02:35', 'This story follows Naruto Uzumaki, a young orphan in the village of Konohagakure, who is ostracized for housing the Nine-Tailed Demon Fox that once attacked the village. Craving attention, Naruto frequently causes trouble, culminating in a prank on the Hokage Monument. His teacher, Iruka Umino, struggles with Naruto\'s inability to perform basic ninja techniques but decides to treat him to ramen after a day of mischief. When Naruto fails the final exam for not executing the Clone Technique, Mizuki, a sympathetic instructor, deceives Naruto into stealing the Scroll of Seals, promising it could help him become a ninja.\r\n\r\nNaruto learns one technique from the scroll before being confronted by Iruka. Mizuki tries to turn Naruto against the village by revealing his status as the Nine-Tails\' host and attempts to kill him. Iruka protects Naruto, sharing his own loss from the Nine-Tails\' attack but expressing no hatred towards Naruto. Mizuki then tries to manipulate Naruto for his own gain, but Iruka\'s genuine care and acceptance inspire Naruto. Naruto uses the Multiple Shadow Clone Technique he learned from the scroll to defeat Mizuki. Witnessing Naruto\'s determination and newfound ability, Iruka acknowledges him as a ninja in training, marking the beginning of Naruto\'s journey to becoming Hokage.'),
(2, 'The Worst Client', 2, '2000-06-02', 'Naruto_vol2.jpg', '2000-08-14 19:02:21', '2024-03-31 19:02:35', 'After Team 7 completes an uneventful, D-rank mission of finding a stray cat, Naruto demands that the Third Hokage give them a more interesting assignment. The Third agrees to give them the C-rank task of escorting a man named Tazuna to his home in the Land of Waves. After leaving Konoha, they are attacked by the Demon Brothers, who quickly seem to kill Kakashi before turning their attention to Naruto.'),
(3, 'For the Sake of Dreams…!!', 3, '2000-08-04', 'Naruto_vol3.jpg', '2024-04-01 02:31:36', '2024-04-01 02:31:36', 'This story follows Naruto Uzumaki, a young orphan in the village of Konohagakure, who is ostracized for housing the Nine-Tailed Demon Fox that once attacked the village. Craving attention, Naruto frequently causes trouble, culminating in a prank on the Hokage Monument. His teacher, Iruka Umino, struggles with Naruto\'s inability to perform basic ninja techniques but decides to treat him to ramen after a day of mischief. When Naruto fails the final exam for not executing the Clone Technique, Mizuki, a sympathetic instructor, deceives Naruto into stealing the Scroll of Seals, promising it could help him become a ninja'),
(4, ' The Hero\'s Bridge!!', 4, '2002-09-04', 'Naruto_vol4.jpg', '2024-04-01 02:33:15', '2024-04-01 02:33:15', 'Naruto learns one technique from the scroll before being confronted by Iruka. Mizuki tries to turn Naruto against the village by revealing his status as the Nine-Tails\' host and attempts to kill him. Iruka protects Naruto, sharing his own loss from the Nine-Tails\' attack but expressing no hatred towards Naruto. Mizuki then tries to manipulate Naruto for his own gain, but Iruka\'s genuine care and acceptance inspire Naruto. Naruto uses the Multiple Shadow Clone Technique he learned from the scroll to defeat Mizuki. Witnessing Naruto\'s determination and newfound ability, Iruka acknowledges him as a ninja in training, marking the beginning of Naruto\'s journey to becoming Hokage.'),
(5, 'ROMANCE DAWN - The Dawn of the Adventure', 5, '1997-12-24', 'Onepiece_vol1.jpg', '2024-04-01 02:41:07', '2024-04-01 02:41:07', 'The main character of the series, Monkey D. Luffy, is introduced as a child, with his role model, Shanks. After Shanks comes into conflict with a mountain bandit at a bar, it is revealed that Luffy accidentally ate a Devil Fruit, the Gomu Gomu no Mi. Later on, after Luffy provokes Higuma, he is taken hostage. Shanks and his crew show up and defeat Higuma\'s bandits, but Higuma escapes, taking Luffy on a boat. After Higuma kicks Luffy into the water, a Sea King appears and eats Higuma, and Shanks arrives just in time to save Luffy\'s life. Shanks scares away the Sea King by using Haki, but loses his arm in the process. Because Shanks sacrificed his left arm in order to save him, Luffy becomes even more determined to become a pirate. Before Shanks leaves, he gives Luffy his straw hat. Ten years later, Luffy officially sets sail as a pirate and begins the adventure to fulfill his dream of becoming the Pirate King.'),
(6, 'VERSUS!! The Buggy Pirate Crew', 6, '1998-04-03', 'Onepiece_vol2.jpg', '2024-04-01 02:46:43', '2024-04-01 02:46:43', 'Volume 2 of \"One Piece\" sees Monkey D. Luffy\'s crew facing off against Buggy the Clown and Captain Axe-Hand Morgan. They gain new members, including Nami and Roronoa Zoro, as they learn about the dangers of the Grand Line and the dreams that drive each of them. Friendship, dreams, and freedom are central themes as the crew bonds and faces challenges together, setting the stage for their epic adventure in the vast seas of the One Piece world.'),
(7, 'Things That Can\'t Be Faked', 7, '1998-06-04', 'Onepiece_vol3.jpg', '2024-04-01 02:49:00', '2024-04-01 02:49:00', 'In \"One Piece\" Volume 3, the story progresses with Monkey D. Luffy and his crew\'s adventure as they sail to the notorious Orange Town. This volume introduces us to Boodle, the mayor of Orange Town, who is determined to protect his village from the marauding Buggy the Clown and his band of pirates. The crew\'s commitment to defending the innocent villagers showcases their growing camaraderie and sense of justice. Meanwhile, Nami\'s cunning and strategic mind is further highlighted as she navigates the complexities of pirate conflicts, revealing more about her character and her past. The volume is packed with action, strategy, and the early bonds of friendship that define the Straw Hat Pirates, setting the tone for their continued quest for the One Piece treasure. The crew\'s determination to fight for their dreams and protect those in need is emphasized, enriching the saga with themes of adventure and loyalty.'),
(8, 'Crescent Moon', 8, '1998-08-04', 'Onepiece_vol4.jpg', '2024-04-01 02:52:16', '2024-04-01 02:52:16', 'In \"One Piece\" Volume 4, the adventure intensifies as Monkey D. Luffy and his burgeoning crew of pirates continue to navigate the perilous waters of the East Blue Sea, encountering the sinister plot of Captain Kuro, one of the most cunning and brutal pirates in the world. The story unfolds in Syrup Village, where they meet Usopp, a local boy known for his tall tales, who dreams of becoming a brave warrior like his father, a famed pirate. This volume delves deeply into Usopp\'s character, exploring his fears, dreams, and the lies that mask his true courage. As Luffy and his crew become embroiled in Captain Kuro\'s devious plan to kill Kaya, a sickly heiress to a vast fortune, and seize her wealth, the themes of betrayal, ambition, and the stark contrast between truth and deception are expertly woven into the narrative. The ensuing battles are a testament to the series\' ability to blend high-octane action with moments of profound emotional resonance, highlighting the Straw Hat Pirates\' unwavering commitment to justice and their readiness to defend those in dire straits. Through their efforts to protect Kaya and thwart Kuro\'s plot, the bonds among the crew members are strengthened, showcasing their collective growth and solidifying their resolve to face the myriad challenges that lie ahead in their quest for the One Piece.'),
(9, 'THE DEATH AND THE STRAWBERRY', 9, '2002-01-04', 'Bleach_vol1.jpg', '2024-04-01 02:56:20', '2024-04-01 02:56:20', 'Ichigo Kurosaki has always been able to see ghosts, but this ability doesn\'t change his life nearly as much as his close encounter with Rukia Kuchiki, a Shinigami and member of the mysterious Soul Society. While fighting a Hollow, an evil spirit that preys on humans who display psychic energy, Rukia attempts to lend Ichigo some of her powers so that he can save his family; but much to her surprise, Ichigo absorbs every last bit of her energy. Now a full-fledged Shinigami himself, Ichigo quickly learns that the world he inhabits is one full of dangerous spirits and, along with Rukia - who is slowly regaining her powers - it\'s Ichigo\'s job to protect the innocent from Hollows and help the spirits themselves find peace.'),
(10, 'GOODBYE PARAKEET', 10, '2002-03-04', 'Bleach_vol2.jpg', '2024-04-01 02:58:11', '2024-04-01 02:58:11', 'Immediately after checking into the Kurosaki Clinic with a mysterious scar on his back, the muscle-bound Yasutora Sado goes AWOL. Accompanying Sado is a talking parakeet imbued with the soul of a young boy named Yūichi. It doesn\'t take newbie Shinigami Ichigo Kurosaki long to surmise that a Hollow must be involved--the strongest spirit he\'s faced to date. Ichigo is about to discover that not every soul is bound for Soul Society, especially if it\'s tainted with innocent blood.'),
(11, 'GOODNITE MY SISTA', 11, '2002-06-04', 'Bleach_vol3.jpg', '2024-04-01 02:59:15', '2024-04-01 02:59:15', 'Ichigo Kurosaki was a little boy when his mother passed away. One rainy day, Ichigo, whose ability to see the undead is a blessing and a curse, tried to stop a young girl from drowning in a nearby river. His mother, Masaki, ran after them, frantically trying to rescue her only son. Then everything went black, and Ichigo awoke only to discover his mother dead and the little girl gone.\r\n\r\nIt\'s the anniversary of Masaki\'s death, and the entire Kurosaki clan, along with former Shinigami Rukia Kuchiki, head to the cemetery to pay their respects. Sleeping demons rarely ever stay still and pretty soon Ichigo confronts the Grand Fisher, the Hollow that may be responsible for his mother\'s demise.'),
(12, 'Memories In The Rain', 12, '2002-09-04', 'Bleach_vol4.jpg', '2024-04-01 03:02:37', '2024-04-01 03:02:37', 'A new reality-show craze is sweeping the nation, garnering legions of screaming fans (the majority of them being teenaged girls). But this program comes with a supernatural twist--the host, a media-savvy spiritualist, travels to local hotspots and performs exorcisms, live on national TV! Surely Shinigami Ichigo Kurosaki has his doubts about this primetime prima donna, and his assumptions are about to be put to the test--the show is heading straight for his neighborhood! What effect will this unprovoked media presence have on the fragile balance between Earth and the spirit world?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mangakas`
--
ALTER TABLE `mangakas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mangakas`
--
ALTER TABLE `mangakas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mangas`
--
ALTER TABLE `mangas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
