-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 01:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogposts`
--

CREATE TABLE `blogposts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogposts`
--

INSERT INTO `blogposts` (`id`, `title`, `text`) VALUES
(1, 'cos cos ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor sapien sit amet mattis rutrum. Nulla mollis nibh ac felis vestibulum, quis interdum purus sodales. Curabitur tellus justo, lobortis id nisl quis, consectetur ultrices quam. Suspendisse semper ex nec nisl fermentum, at tincidunt diam cursus. Cras neque nulla, faucibus quis libero at, condimentum faucibus enim. Curabitur bibendum orci eget dolor ullamcorper, nec placerat eros congue. Aliquam interdum scelerisque euismod. Sed porta tellus erat, id ultricies massa posuere quis. Suspendisse potenti. Aliquam molestie dui quis dictum blandit. Cras sagittis tempus felis sed dignissim. Ut luctus felis ut malesuada rhoncus. Nam suscipit urna ut velit interdum, et dignissim neque ultrices. In hac habitasse platea dictumst.\r\n\r\nPhasellus feugiat laoreet mi in elementum. Nullam euismod placerat massa eu dapibus. Vivamus non urna vel magna accumsan accumsan vitae imperdiet risus. Fusce posuere, mi quis gravida gravida, orci felis tincidunt nisi, et ultricies nisi lacus vitae lorem. In lacinia urna sapien, vel malesuada diam aliquet quis. Phasellus fermentum ex a nisl lacinia cursus. Nullam quis maximus libero, ut ullamcorper risus. Vivamus sodales purus eu lacus ultrices rutrum. Vestibulum volutpat quam et elit lobortis, eu tempor mi suscipit. Etiam tortor arcu, tempus ac molestie in, imperdiet sit amet eros. Vestibulum arcu ex, eleifend ac congue non, blandit nec magna. Nulla facilisi. Maecenas ac urna suscipit, auctor metus vitae, tristique ex. Aenean nisl arcu, pharetra pharetra nulla id, iaculis rutrum lacus.\r\n\r\nMorbi ultrices condimentum nulla at laoreet. Phasellus dictum leo sed enim tincidunt, non dignissim diam rutrum. Curabitur nibh risus, imperdiet ut ipsum eget, eleifend finibus libero. Praesent dignissim libero a eros mollis, eget rhoncus tortor molestie. Nam ac est nisl. Sed iaculis et leo eget tempor. Morbi elementum at odio in sollicitudin. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam venenatis sapien et mi tempor, at tempus lectus euismod. Aenean in rutrum neque. Pellentesque tortor arcu, mattis sed tristique ut, tincidunt sed turpis. Quisque ac mi enim. Ut orci neque, venenatis nec est vel, sollicitudin volutpat tellus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque vel libero nec dui egestas fringilla sed sed nisi.\r\n\r\nIn hac habitasse platea dictumst. Duis ac laoreet arcu. Nulla sem lectus, ultrices non magna ullamcorper, sodales ullamcorper neque. Phasellus sit amet sollicitudin purus. Sed et blandit tellus, ac cursus diam. Curabitur dictum odio semper libero pharetra porta. Integer facilisis hendrerit magna, sed laoreet erat. Donec nec enim nunc. Donec tincidunt dapibus imperdiet. Morbi ultricies lacus dui, sit amet dignissim dolor porta et. Maecenas purus eros, elementum vitae dui a, condimentum ultricies libero.'),
(2, 'cos 2 cos 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet eros eu metus pharetra scelerisque. Morbi ac molestie dolor. Duis sodales mauris ac bibendum feugiat. Cras lacus massa, ullamcorper ut erat dignissim, semper volutpat lorem. Nam mollis eu velit ac commodo. Quisque congue dui vitae lectus condimentum pharetra. Etiam condimentum turpis in porttitor dignissim. Maecenas ut neque in odio ullamcorper ullamcorper at at odio. Mauris non enim sed lacus lacinia lacinia ut vel nisi. Morbi auctor nibh at diam pellentesque, id ultrices elit vehicula.\r\n\r\nMorbi non risus risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam vitae felis scelerisque, malesuada sem nec, mattis mauris. Ut quis sapien non dui auctor gravida at sit amet ante. Sed consectetur, nulla at semper fermentum, lorem augue maximus eros, tincidunt mollis quam sapien non nibh. Morbi eu eros tellus. Suspendisse vitae tellus vel lectus faucibus consectetur sit amet sed metus.\r\n\r\nVestibulum dictum ultrices nisl quis dignissim. Nullam imperdiet laoreet nisi et elementum. Sed volutpat molestie dui, sit amet dictum magna tincidunt quis. Sed lacus sem, gravida a felis vitae, aliquet commodo turpis. Donec tempor tincidunt condimentum. Cras vitae condimentum est, a consectetur urna. Pellentesque in metus quis nisi facilisis egestas ut sit amet turpis. Fusce id sem at diam malesuada tempus. Aenean elementum ipsum fringilla, condimentum erat vel, aliquet neque. Mauris fermentum tellus turpis, sed congue urna luctus sed. Quisque vel turpis id magna porttitor volutpat. Suspendisse mattis purus mauris, ut tristique dui maximus at. Sed tristique justo vitae odio maximus accumsan. Nam nec tellus rutrum, cursus arcu at, vulputate lectus. Mauris ut congue lorem, in vehicula dui.\r\n\r\nSed a mauris ac libero consectetur cursus et id ante. Phasellus in fermentum ante. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec maximus, lectus a porta efficitur, dolor lacus imperdiet elit, id ornare ante mi quis sapien. Proin condimentum finibus felis a venenatis. Aenean ac dictum elit. Proin laoreet accumsan risus id placerat. Vestibulum magna lacus, semper in ante vitae, condimentum vehicula odio. Suspendisse non dolor vehicula, feugiat mi ac, lobortis lacus. Donec ut faucibus justo. Aenean bibendum, nunc eu lacinia congue, urna dui varius nunc, sed porta neque ipsum quis lacus. Morbi et tortor sed neque consequat convallis.\r\n\r\nDonec id elit semper, porta turpis in, fringilla tortor. In at facilisis mi, et porta ante. Donec augue turpis, rutrum sed gravida et, commodo sit amet dui. Pellentesque eget felis diam. Nulla sed lectus ac neque consequat porttitor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce quam nunc, sollicitudin sed elit nec, consectetur vestibulum diam. Quisque sodales sapien ultricies ante egestas, nec euismod magna faucibus. Sed ut mauris ac ante suscipit viverra vitae sed mi. Duis vitae lectus diam. Aliquam erat volutpat. Nulla laoreet luctus urna, quis faucibus ipsum blandit dictum. Phasellus auctor magna arcu, volutpat vulputate dui aliquam non. Aenean feugiat tristique libero, non commodo nulla porta ut. Morbi eu consectetur lorem, sit amet mattis enim.'),
(3, 'ukjyhdfcg ljdyehfgv', 'krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu krotko tu ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogposts`
--
ALTER TABLE `blogposts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogposts`
--
ALTER TABLE `blogposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
