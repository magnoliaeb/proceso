-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2018 a las 00:46:35
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `process`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagrama`
--

CREATE TABLE `diagrama` (
  `id` int(11) NOT NULL,
  `code` longtext NOT NULL,
  `name` varchar(30) NOT NULL,
  `author` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `diagrama`
--

INSERT INTO `diagrama` (`id`, `code`, `name`, `author`) VALUES
(1, 'st=>start: Start:>http://www.google.com[blank]\r\ne=>end:>http://www.google.com\r\nop1=>operation: My Operation\r\nsub1=>subroutine: My Subroutine\r\ncond=>condition: Yes\r\nor No?:>http://www.google.com\r\nio=>inputoutput: catch something...\r\npara=>parallel: parallel tasks\r\n\r\nst->op1->cond\r\ncond(yes)->io->e\r\ncond(no)->para\r\npara(path1, bottom)->sub1(right)->op1\r\npara(path2, top)->op1', 'diagrama de trabajo', 'Maria Marcano'),
(2, 'st=>start: Start|past:>http://www.google.com[blank]\r\ne=>end: End|future:>http://www.google.com\r\nop1=>operation: My Operation|past\r\nop2=>operation: Stuff|current\r\nsub1=>subroutine: My Subroutine|invalid\r\ncond=>condition: Yes\r\nor No?|approved:>http://www.google.com\r\nc2=>condition: Good idea|rejected\r\nio=>inputoutput: catch something...|future\r\n\r\nst->op1(right)->cond\r\ncond(yes, right)->c2\r\ncond(no)->sub1(left)->op1\r\nc2(yes)->io->e\r\nc2(no)->op2->e', 'diagrama de productos', 'pedro moro'),
(3, 'st=>start: Improve your\r\nl10n process!\r\ne=>end: Continue to have fun!:>https://youtu.be/YQryHo1iHb8[blank]\r\nop1=>operation: Go to locize.com:>https://locize.com[blank]\r\nsub1=>subroutine: Read the awesomeness\r\ncond(align-next=no)=>condition: Interested to\r\ngetting started?\r\nio=>inputoutput: Register:>https://www.locize.io/register[blank]\r\nsub2=>subroutine: Read about improving\r\nyour localization workflow\r\nor another source:>https://medium.com/@adrai/8-signs-you-should-improve-your-localization-process-3dc075d53998[blank]\r\nop2=>operation: Login:>https://www.locize.io/login[blank]\r\ncond2=>condition: valid password?\r\ncond3=>condition: reset password?\r\nop3=>operation: send email\r\nsub3=>subroutine: Create a demo project\r\nsub4=>subroutine: Start your real project\r\nio2=>inputoutput: Subscribe\r\n\r\nst->op1->sub1->cond\r\ncond(yes)->io->op2->cond2\r\ncond2(no)->cond3\r\ncond3(no,bottom)->op2\r\ncond3(yes)->op3\r\nop3(right)->op2\r\ncond2(yes)->sub3\r\nsub3->sub4->io2->e\r\ncond(no)->sub2(right)->op1\r\n\r\nst@>op1({\"stroke\":\"Red\"})@>sub1({\"stroke\":\"Red\"})@>cond({\"stroke\":\"Red\"})@>io({\"stroke\":\"Red\"})@>op2({\"stroke\":\"Red\"})@>cond2({\"stroke\":\"Red\"})@>sub3({\"stroke\":\"Red\"})@>sub4({\"stroke\":\"Red\"})@>io2({\"stroke\":\"Red\"})@>e({\"stroke\":\"Red\",\"stroke-width\":6,\"arrow-end\":\"classic-wide-long\"})', 'diagrama de secuencia', 'marcos gutierrez'),
(4, 'st=>start: Start|past:>http://www.google.com[blank]\r\ne=>end: End|future:>http://www.google.com\r\nop1=>operation: My Operation|past\r\nop2=>operation: Stuff|current\r\nsub1=>subroutine: My Subroutine|invalid\r\ncond=>condition: Yes\r\nor No?|approved:>http://www.google.com\r\nc2=>condition: Good idea|rejected\r\nio=>inputoutput: catch something...|future\r\n\r\nst->op1(right)->cond\r\ncond(yes, right)->c2\r\ncond(no)->sub1(left)->op1\r\nc2(yes)->io->e\r\nc2(no)->op2->e', 'Diagrama de barras', 'Alejandro torrez'),
(5, 'st=>start: Start|past:>http://www.google.com[blank]\r\ne=>end: End|successive:>http://www.google.com\r\nop1=>operation: My Operation|past\r\nop2=>operation: Stuff|current\r\nsub1=>subroutine: My Subroutine|invalid\r\ncond=>condition: Yes\r\nor No?|approved:>http://www.google.com\r\nc2=>condition: Good idea|rejected\r\nio=>inputoutput: catch something...|request\r\n\r\nst->op1(right)->cond\r\ncond(yes, right)->c2\r\ncond(no)->sub1(left)->op1\r\nc2(yes)->io->e\r\nc2(no)->op2->e', 'Diagrama de flujo elementos', 'carmen perez'),
(6, 'st=>start: Start|past:>http://www.google.com[blank]\ne=>end: End|successive:>http://www.google.com\nop1=>operation: My Operation|past\nop2=>operation: Stuff|current\nsub1=>subroutine: My Subroutine|invalid\ncond=>condition: Yes\nor No?|approved:>http://www.google.com\nc2=>condition: Good idea|rejected\nio=>inputoutput: catch something...|request\n\nst->op1(right)->cond\ncond(yes, right)->c2\ncond(no)->sub1(left)->op1\nc2(yes)->io->e\nc2(no)->op2->e', 'diagrama de fase', 'jonathan velasquez'),
(7, 'st=>start: Start|past:>http://www.google.com[blank]\ne=>end: End|successive:>http://www.google.com\nop1=>operation: My Operation\nop2=>operation: Stuff|current\nsub1=>subroutine: My Subroutine|invalid\ncond=>condition: Yes\nor No?|approved:>http://www.google.com\nc2=>condition: Good idea|rejected\nio=>inputoutput: catch something...|request\n\nst->op1->cond\ncond(yes, right)->c2\nc2(yes)->io->e\nc2(no)->op2->e', 'Diagrama de arbol', 'estivenson benjamin'),
(9, 'st=>start: Improve your l10n process!\ne=>end: Continue to have fun!:>https://youtu.be/YQryHo1iHb8[blank]\nop1=>operation: Go to locize.com |past:>https://locize.com[blank]\nsub1=>subroutine: Read the awesomeness |current\ncond(align-next=no)=>condition: Interested to\ngetting started?\nio=>inputoutput: Register:>https://www.locize.io/register[blank]\nsub2=>subroutine: Read about improving\nyour localization workflow\nor another source:>https://medium.com/@adrai/8-signs-you-should-improve-your-localization-process-3dc075d53998[blank]\nop2=>operation: Login:>https://www.locize.io/login[blank]\ncond2=>condition: valid password?|approved\ncond3=>condition: reset password?|invalid\nop3=>operation: send email|rejected\nsub3=>subroutine: Create a demo project\nsub4=>subroutine: Start your real project|successive\nio2=>inputoutput: Subscribe\n\nst->op1->sub1->cond\ncond(yes)->io->op2->cond2\ncond2(no)->cond3\ncond3(no,bottom)->op2\ncond3(yes)->op3\nop3(right)->op2\ncond2(yes)->sub3\nsub3->sub4->io2->e\ncond(no)->sub2(right)->op1\n\nst@>op1({\"stroke\":\"Red\"})@>sub1({\"stroke\":\"Red\"})@>cond({\"stroke\":\"Red\"})@>io({\"stroke\":\"Red\"})@>op2({\"stroke\":\"Red\"})@>cond2({\"stroke\":\"Red\"})@>sub3({\"stroke\":\"Red\"})@>sub4({\"stroke\":\"Red\"})@>io2({\"stroke\":\"Red\"})@>e({\"stroke\":\"Green\",\"stroke-width\":6,\"arrow-end\":\"classic-wide-long\"})', 'diagrama de flujo de secuencia', 'Calos RamÃ³n'),
(10, 'st=>start: Improve your l10n process!\ne=>end: Continue to have fun!:>https://youtu.be/YQryHo1iHb8[blank]\nop1=>operation: Go to locize.com |past:>https://locize.com[blank]\nsub1=>subroutine: Read the awesomeness |current\ncond(align-next=no)=>condition: Interested to\ngetting started?\nio=>inputoutput: Register:>https://www.locize.io/register[blank]\nsub2=>subroutine: Read about improving\nyour localization workflow\nor another source:>https://medium.com/@adrai/8-signs-you-should-improve-your-localization-process-3dc075d53998[blank]\nop2=>operation: Login:>https://www.locize.io/login[blank]\ncond2=>condition: valid password?|approved\ncond3=>condition: reset password?|invalid\nop3=>operation: send email|rejected\nsub3=>subroutine: Create a demo project\nsub4=>subroutine: Start your real project|successive\nio2=>inputoutput: Subscribe\n\nst->op1->sub1->cond\n        cond(yes)->io->op2->cond2\n        cond2(no)->cond3\n        cond3(no,bottom)->op2\n        cond3(yes)->\n        cond2(yes)->sub3\n        sub3->sub4->\n        cond(no)->sub2(right)->op1\n        \n        st@>op1({\"stroke\":\"Red\"})@>sub1({\"stroke\":\"Red\"})@>cond({\"stroke\":\"Red\"})@>io({\"stroke\":\"Red\"})@>op2({\"stroke\":\"Red\"})@>cond2({\"stroke\":\"Red\"})@>sub3({\"stroke\":\"Red\"})@>sub4({\"stroke\":\"Red\"})@>io2({\"stroke\":\"Red\"})@>e({\"stroke\":\"Green\",\"stroke-width\":6,\"arrow-end\":\"classic-wide-long\"})', 'diagrama de process', 'carlos armando'),
(11, 'st=>start: Improve your l10n process!\ne=>end: Continue to have fun!:>https://youtu.be/YQryHo1iHb8[blank]\nop1=>operation: Go to locize.com |past:>https://locize.com[blank]\nsub1=>subroutine: Read the awesomeness |current\ncond(align-next=no)=>condition: Interested to\ngetting started?\nio=>inputoutput: Register:>https://www.locize.io/register[blank]\nsub2=>subroutine: Read about improving\nyour localization workflow\nor another source:>https://medium.com/@adrai/8-signs-you-should-improve-your-localization-process-3dc075d53998[blank]\nop2=>operation: Login:>https://www.locize.io/login[blank]\ncond2=>condition: valid password?\ncond3=>condition: reset password?\nop3=>operation: send email|rejected\nsub3=>subroutine: Create a demo project\nsub4=>subroutine: Start your real project\nio2=>inputoutput: Subscribe\n\nst->op1->sub1->cond\ncond(yes)->io->op2->cond2\ncond2(no)->cond3\ncond3(no,bottom)->op2\ncond3(yes)->op3\nop3(right)->op2\ncond2(yes)->sub3\nsub3->sub4->io2->e\ncond(no)->sub2(right)->op1\n\nst@>op1({\"stroke\":\"Red\"})@>sub1({\"stroke\":\"Red\"})@>cond({\"stroke\":\"Red\"})@>io({\"stroke\":\"Red\"})@>op2({\"stroke\":\"Red\"})@>cond2({\"stroke\":\"Red\"})@>sub3({\"stroke\":\"Red\"})@>sub4({\"stroke\":\"Red\"})@>io2({\"stroke\":\"Red\"})@>e({\"stroke\":\"Green\",\"stroke-width\":6,\"arrow-end\":\"classic-wide-long\"})', 'Diagrama De Process 1', 'maria carmen'),
(12, 'st=>start: Improve your l10n process!\ne=>end: Continue to have fun!:>https://youtu.be/YQryHo1iHb8[blank]\nop1=>operation: Go to locize.com |past:>https://locize.com[blank]\nsub1=>subroutine: Read the awesomeness |current\ncond(align-next=no)=>condition: Interested to\ngetting started?\nio=>inputoutput: Register:>https://www.locize.io/register[blank]\nsub2=>subroutine: Read about improving\nyour localization workflow\nor another source:>https://medium.com/@adrai/8-signs-you-should-improve-your-localization-process-3dc075d53998[blank]\nop2=>operation: Login:>https://www.locize.io/login[blank]\ncond2=>condition: valid password?|approved\ncond3=>condition: reset password?|invalid\nop3=>operation: send email|rejected\nsub3=>subroutine: Create a demo project\nsub4=>subroutine: Start your real project|successive\nio2=>inputoutput: Subscribe\n\nst->op1->sub1->cond\ncond(yes)->io->op2->cond2\ncond2(no)->cond3\ncond3(no,bottom)->op2\ncond3(yes)->op3\nsub3->sub4->io2->e\ncond(no)->sub2(right)->op1\n', 'diagrama de compra', 'angel martinez'),
(13, 'st=>start: Improve your l10n process!\ne=>end: Continue to have fun!:>https://youtu.be/YQryHo1iHb8[blank]\nop1=>operation: Go to locize.com |past:>https://locize.com[blank]\nsub1=>subroutine: Read the awesomeness |current\ncond(align-next=no)=>condition: Interested to\ngetting started?\nio=>inputoutput: Register:>https://www.locize.io/register[blank]\nsub2=>subroutine: Read about improving\nyour localization workflow\nor another source:>https://medium.com/@adrai/8-signs-you-should-improve-your-localization-process-3dc075d53998[blank]\nop2=>operation: Login:>https://www.locize.io/login[blank]\ncond2=>condition: valid password?|approved\ncond3=>condition: reset password?|invalid\nop3=>operation: send email|rejected\nsub3=>subroutine: Create a demo project\nsub4=>subroutine: Start your real project|successive\nio2=>inputoutput: Subscribe\n\nst->op1->sub1->cond\ncond(yes)->io->op2->cond2\ncond2(no)->cond3\ncond3(no,bottom)->op2\ncond3(yes)->op3\nop3(right)->op2\ncond2(yes)->sub3\nsub3->sub4->io2->e\ncond(no)->sub2(right)->op1\n\nst@>op1({\"stroke\":\"Red\"})@>sub1({\"stroke\":\"Red\"})@>cond({\"stroke\":\"Red\"})@>io({\"stroke\":\"Red\"})@>op2({\"stroke\":\"Red\"})@>cond2({\"stroke\":\"Red\"})@>sub3({\"stroke\":\"Red\"})@>sub4({\"stroke\":\"Red\"})@>io2({\"stroke\":\"Red\"})@>e({\"stroke\":\"Green\",\"stroke-width\":6,\"arrow-end\":\"classic-wide-long\"})', 'diagrama de contataciÃ³n', 'kevin velasquez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `diagrama`
--
ALTER TABLE `diagrama`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `diagrama`
--
ALTER TABLE `diagrama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
