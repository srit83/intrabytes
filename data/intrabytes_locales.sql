-- phpMyAdmin SQL Dump
-- version 4.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 20. Mai 2013 um 17:28
-- Server Version: 5.5.29-0ubuntu0.12.04.2
-- PHP-Version: 5.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `intrabytes`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `intrabytes_locales`
--

CREATE TABLE IF NOT EXISTS `intrabytes_locales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `value_de` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`key`),
  KEY `group` (`group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=445 ;

--
-- Daten für Tabelle `intrabytes_locales`
--

INSERT INTO `intrabytes_locales` (`id`, `key`, `group`, `value_de`) VALUES
(1, 'logout.label', 'nav', 'Logout :name'),
(3, 'settings.label', 'nav', 'Einstellungen'),
(5, 'logout.label', 'usernav', '<i class="icon-off"></i> Logout'),
(6, 'login.index.title', 'users', 'Login'),
(7, 'password.forget.title', 'users', 'Passwort vergessen'),
(8, 'username.label', 'login', 'Nutzername/E-Mail'),
(9, 'username.label', 'forgetpassword', 'Nutzername/E-Mail'),
(10, 'send.label', 'forgetpassword', 'Senden'),
(11, 'password.label', 'login', 'Passwort'),
(12, 'loginbutton.label', 'login', 'Login'),
(13, 'forgetpassword.label', 'login', 'Passwort vergessen'),
(14, 'login.failed', 'messages', 'Nutzername und/oder Passwort falsch.'),
(15, 'login.success', 'messages', 'Sie haben sich erfolgreich eingeloggt.'),
(16, 'allreadyloggedin', 'messages', 'Sie sind bereits eingeloggt.'),
(17, 'prepare_new_password.success', 'messages', 'Weitere Informationen wurden an Ihre hinterlegte E-Mail-Adresse gesendet.'),
(18, 'username.required.error', 'validation', 'Der Benutzername muss ausgefüllt werden.'),
(19, 'password.required.error', 'validation', 'Bitte geben Sie ihr Passwort ein!'),
(20, 'form.invalid', 'validation', 'Das Formular konnte leider nicht verarbeitet werden.'),
(21, 'settings.language.label', 'nav', 'Spracheinstellungen'),
(22, 'settings_language.index.title', 'core', 'Spracheinstellungen'),
(23, 'board.index.title', 'core', 'Dashboard'),
(24, 'settings.user.dashboard.title', 'core', 'Dashboard konfigurieren'),
(25, 'settings_language.index.id.label', 'core', '#'),
(26, 'settings_language.index.locale.label', 'core', 'Locale'),
(27, 'settings_language.index.language.label', 'core', 'Sprache'),
(28, 'settings_language.index.plain.label', 'core', 'Text'),
(29, 'settings_language.index.add.plain.label', 'core', 'Sprache'),
(30, 'settings_language.index.add.button.label', 'core', '<i class="icon-white  icon-plus"></i> Anlegen'),
(31, 'settings_language.index.actions.label', 'core', 'Aktionen'),
(32, 'settings_language.index.actions.edit.label', 'core', 'Bearbeiten'),
(33, 'settings_language.index.actions.delete.label', 'core', 'Löschen'),
(34, 'settings.language.edit.legend', 'core', 'Sprache :sprache bearbeiten'),
(35, 'settings.language.edit.locale.label', 'core', 'Locale'),
(36, 'settings.language.edit.language.label', 'core', 'Sprache'),
(37, 'settings.language.edit.plain.label', 'core', 'Text'),
(38, 'settings.language.edit.save.button.label', 'core', 'Speichern'),
(39, 'settings.language.edit.cancel.button.label', 'core', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(40, 'settings_language.index.default.label', 'core', 'Standardsprache'),
(41, 'book.index.title', 'cash', 'Kassenbuch Übersicht'),
(42, 'book.index.date.label', 'cash', 'Datum'),
(43, 'book.index.desc.label', 'cash', 'Verwendungszweck'),
(44, 'book.index.type.label', 'cash', 'Typ'),
(45, 'book.index.account.label', 'cash', 'Konto'),
(46, 'book.index.user.label', 'cash', 'Nutzer'),
(47, 'book.index.amount.label', 'cash', 'Betrag'),
(48, 'settings_language.index.count.locales.label', 'core', 'Anzahl Übersetzungen'),
(49, 'book.index.add.button.label', 'cash', '<i class="icon-white  icon-plus"></i> Buchung'),
(50, 'cashbook.label', 'nav', 'Kassenbuch'),
(51, 'book_add.index.title', 'cash', 'Buchung hinzufügen'),
(52, 'book_add.index.date.label', 'cash', 'Buchungsdatum'),
(53, 'book_add.index.desc.label', 'cash', 'Verwendungszweck'),
(54, 'book_add.index.amount.label', 'cash', 'Wert'),
(55, 'book_add.index.save.button.label', 'cash', 'Speichern'),
(56, 'book_add.index.cancel.button.label', 'cash', 'Abbruch'),
(57, 'book.index.carryout.label', 'cash', 'Übertrag'),
(58, 'book.index.sum.label', 'cash', 'Summenübertrag'),
(59, 'list.index.nodata', 'projects', '<p>Keine Projekte vorhanden</p>'),
(60, 'list.index.count.contacts.label', 'customers', 'Ansprechpartner (:amount)'),
(61, 'list.index.title', 'customers', 'Kontaktübersicht'),
(62, 'list.index.add.button.label', 'customers', '<i class="icon-white icon-plus"></i> Kontakt hinzufügen '),
(63, 'list.index.address.label', 'customers', 'Adresse'),
(64, 'list.index.references.label', 'customers', 'Referenzen'),
(65, 'list.index.actions.label', 'customers', 'Aktionen'),
(66, 'list.index.actions.show.label', 'customers', 'Anzeigen'),
(67, 'list.index.actions.edit.label', 'customers', 'Bearbeiten'),
(68, 'list.index.actions.delete.label', 'customers', 'Löschen'),
(70, 'login.index.username.label', 'users', 'Nutzername/E-Mail'),
(71, 'login.index.password.label', 'users', 'Passwort'),
(72, 'login.index.login.button.label', 'users', 'Login'),
(73, 'login.index.forgetpassword.label', 'users', 'Passwort vergessen'),
(74, 'edit.index.title', 'customers', 'Kontakt bearbeiten'),
(75, 'delete.index.title', 'customers', 'Kontakt löschen'),
(76, 'edit.index.email.label', 'customers', 'E-Mail Adresse'),
(77, 'edit.index.save.button.label', 'customers', '<i class="icon-white icon-ok"></i> Kontakt speichern'),
(78, 'edit.index.cancel.button.label', 'customers', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(79, 'add.index.title', 'customers', 'Kontakt hinzufügen'),
(80, 'add.index.email.label', 'customers', 'E-Mail Adresse'),
(81, 'add.index.save.button.label', 'customers', '<i class="icon-white icon-ok"></i> Kontakt anlegen'),
(82, 'add.index.cancel.button.label', 'customers', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(83, 'salutation.salutation.mister.label', 'model', 'Herr'),
(84, 'salutation.salutation.miss.label', 'model', 'Frau'),
(85, 'countries.name.germany.label', 'model', 'Deutschland'),
(86, 'countries.name.switzerland.label', 'model', 'Schweiz'),
(87, 'countries.name.austria.label', 'model', 'Österreich'),
(88, 'list.index.count.projects.label', 'customers', 'Projekte (:amount)'),
(89, 'list.index.actions.add.project.label', 'customers', '<i class="icon-plus"></i> Projekt hinzufügen'),
(90, 'list.index.actions.add.contact_persons.label', 'customers', '<i class="icon-plus"></i> Ansprechpartner hinzufügen'),
(91, 'pubkeys.config.label', 'usernav', '<i class="icon-fire"></i> Public Key Verwaltung'),
(92, 'settings_pubkeys_list.index.add.button.label', 'users', '<i class="icon-white icon-plus"></i> Public Key hinzufügen'),
(93, 'settings_pubkeys_list.index.title', 'users', 'Public Key Verwaltung'),
(94, 'settings_pubkeys_list.index.name.label', 'users', 'Name'),
(95, 'settings_pubkeys_list.index.value.label', 'users', 'Public Key'),
(96, 'settings_pubkeys_list.index.created_at.label', 'users', 'Erstellt'),
(97, 'settings_pubkeys_list.index.actions.label', 'users', 'Aktionen'),
(98, 'settings_pubkeys_list.index.actions.edit.label', 'users', 'Bearbeiten'),
(99, 'settings_pubkeys_list.index.actions.delete.label', 'users', 'Löschen'),
(100, 'expected.parameters.notexists', 'exception', 'Es fehlen erforderliche Parameter.'),
(101, 'settings_pubkeys_edit.index.title', 'users', 'Public Key bearbeiten'),
(102, 'settings_pubkeys_edit.index.name.label', 'users', 'Name'),
(103, 'settings_pubkeys_edit.index.value.label', 'users', 'Public Key'),
(104, 'settings_pubkeys_edit.index.save.button.label', 'users', 'Speichern'),
(105, 'settings_pubkeys_edit.index.cancel.button.label', 'users', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(106, 'settings_pubkeys_add.index.title', 'users', 'Public Key anlegen'),
(107, 'settings_pubkeys_add.index.name.label', 'users', 'Name'),
(108, 'settings_pubkeys_add.index.value.label', 'users', 'Public Key'),
(109, 'settings_pubkeys_add.index.save.button.label', 'users', 'Speichern'),
(110, 'settings_pubkeys_add.index.cancel.button.label', 'users', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(111, 'edit.index.legend', 'customers', 'Kontaktdaten'),
(112, 'edit.index.company_name.label', 'customers', 'Firmen Name'),
(113, 'edit.index.salutation.label', 'customers', 'Anrede'),
(114, 'edit.index.firstname.label', 'customers', 'Vorname'),
(115, 'edit.index.street.label', 'customers', 'Straße'),
(116, 'edit.index.country.label', 'customers', 'Land'),
(117, 'edit.index.phone.label', 'customers', 'Telefonnummer'),
(118, 'edit.index.fax.label', 'customers', 'Fax'),
(119, 'edit.index.lastname.label', 'customers', 'Nachname'),
(120, 'edit.index.housenumber.label', 'customers', 'Hausnummer'),
(121, 'edit.index.city_text.label', 'customers', 'Ort'),
(122, 'edit.index.postalcode_text.label', 'customers', 'Postleitzahl'),
(123, 'add.index.legend', 'customers', 'Kontaktdaten'),
(124, 'add.index.company_name.label', 'customers', 'Firmenname'),
(125, 'add.index.phone.label', 'customers', 'Telefon'),
(126, 'add.index.fax.label', 'customers', 'Fax'),
(127, 'add.index.salutation.label', 'customers', 'Anrede'),
(128, 'add.index.firstname.label', 'customers', 'Vorname'),
(129, 'add.index.lastname.label', 'customers', 'Nachname'),
(130, 'add.index.street.label', 'customers', 'Straße'),
(131, 'add.index.housenumber.label', 'customers', 'Hausnummer'),
(132, 'add.index.postalcode_text.label', 'customers', 'Postleitzahl'),
(133, 'add.index.city_text.label', 'customers', 'Ort'),
(134, 'add.index.country.label', 'customers', 'Land'),
(135, 'projects_list.index.name.label', 'customers', 'Name'),
(136, 'projects_list.index.created_at.label', 'customers', 'Erstellt'),
(137, 'projects_list.index.actions.label', 'customers', 'Aktionen'),
(138, 'projects_list.index.title', 'customers', 'Projekt'),
(139, 'projects_list.index.add.button.label', 'customers', '<i class="icon-white icon-plus"></i> Projekt hinzufügen'),
(140, 'projects_list.index.actions.edit.label', 'customers', '<i class="icon-edit"></i> Bearbeiten'),
(141, 'projects_list.index.actions.delete.label', 'customers', '<i class="icon-trash"></i> Löschen'),
(142, 'projects_edit.index.title', 'customers', 'Projekt bearbeiten'),
(143, 'projects_edit.index.legend', 'customers', 'Projektdaten'),
(144, 'projects_edit.index.name.label', 'customers', 'Projektname'),
(145, 'projects_edit.index.save.button.label', 'customers', 'Speichern'),
(146, 'projects_edit.index.cancel.button.label', 'customers', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(147, 'password.forget.username.label', 'users', 'Nutzername/E-Mail'),
(148, 'password.forget.send.label', 'users', 'Senden'),
(149, 'password.forget.back_to_login.label', 'users', '<i class="icon-arrow-left"></i> Zurück zum Login'),
(150, 'edit.index.edit.customer.success', 'customers', 'Kontakt wurde bearbeitet.'),
(151, 'projects.list.index.title', 'customers', 'Projektübersicht'),
(152, 'projects.list.index.add.button.label', 'customers', '<i class="icon-white icon-plus"></i> Projekt hinzufügen'),
(153, 'projects.list.index.name.label', 'customers', 'Projektname'),
(154, 'projects.list.index.actions.label', 'customers', 'Aktionen'),
(155, 'projects.list.index.url.label', 'customers', 'Projekt URL'),
(156, 'projects.list.index.created_at.label', 'customers', 'Erstellt'),
(157, 'projects.list.index.redmine_project_label.label', 'customers', 'Redmine Projekt Kennung'),
(158, 'projects.list.index.actions.edit.label', 'customers', '<i class="icon-edit"></i> Bearbeiten'),
(159, 'projects.list.index.actions.delete.label', 'customers', '<i class="icon-trash"></i> Löschen'),
(160, 'projects.delete.index.title', 'customers', 'Projekt löschen'),
(161, 'projects.delete.index.legend', 'customers', 'Bist du sicher, das du das Projekt löschen möchtest?'),
(162, 'projects.delete.index.delete.button.label', 'customers', '<i class="icon-white icon-thumbs-up"></i> Ja, das Projekt löschen'),
(163, 'projects.delete.index.cancel.button.label', 'customers', '<i class="icon-white icon-thumbs-down"></i> Nein, abbrechen'),
(164, 'projects.edit.index.title', 'customers', 'Projekt bearbeiten'),
(165, 'projects.edit.index.legend', 'customers', 'Projektdaten'),
(166, 'projects.edit.index.name.label', 'customers', 'Projektname'),
(167, 'projects.edit.index.save.button.label', 'customers', '<i class="icon-white icon-ok"></i> Projekt Speichern'),
(168, 'projects.edit.index.cancel.button.label', 'customers', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(170, 'projects.edit.index.success', 'customers', 'Projekt gespeichert'),
(171, 'projects.delete.index.success', 'customers', 'Projekt gelöscht'),
(172, 'projects.add.index.title', 'customers', 'Projekt hinzufügen'),
(173, 'projects.add.index.legend', 'customers', 'Projektdaten'),
(174, 'projects.add.index.name.label', 'customers', 'Projektname'),
(175, 'projects.add.index.save.button.label', 'customers', '<i class="icon-white icon-ok"></i> Projekt anlegen'),
(176, 'projects.add.index.cancel.button.label', 'customers', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(178, 'projects.edit.index.url.label', 'customers', 'Projekt URL'),
(179, 'projects.edit.index.redmine_project_label.label', 'customers', 'Redmine Kennung'),
(180, 'projects.add.index.url.label', 'customers', 'Projekt URL'),
(181, 'projects.add.index.redmine_project_label.label', 'customers', 'Redmine Kennung'),
(182, 'projects.list.index.actions.show.label', 'customers', '<i class="icon-list"></i> Anzeigen'),
(183, 'projects.show.index.title', 'customers', 'Projektdetails'),
(184, 'projects.add.index.success', 'customers', 'Projekt angelegt'),
(185, 'projects.list.index.nodata', 'customers', 'Noch keine Projekte vorhanden'),
(186, 'delete.index.legend', 'customers', 'Kontakt löschen'),
(187, 'delete.index.delete.button.label', 'customers', '<i class="icon-white icon-thumbs-up"></i> Ja, den Kontakt löschen'),
(188, 'delete.index.cancel.button.label', 'customers', '<i class="icon-white icon-thumbs-down"></i> Nein, abbrechen'),
(189, '404.index.title', 'core', 'Seite nicht gefunden.'),
(190, 'delete.index.success', 'customers', 'Kontakt gelöscht'),
(191, 'add.index.success', 'customers', 'Kontakt angelegt'),
(192, 'add.index.title', 'redmines', 'Redmine Installation hinzufügen'),
(193, 'add.index.legend', 'redmines', 'Redmine Daten'),
(194, 'add.index.success', 'redmines', 'Redmine Installation hinzugefügt'),
(195, 'add.index.redmine[name].label', 'redmines', 'Bezeichnung'),
(196, 'add.index.redmine[url].label', 'redmines', 'URL (inkl. http(s)://)'),
(197, 'add.index.save.button.label', 'redmines', '<i class="icon-white icon-ok"></i> Redmine Installation anlegen'),
(198, 'add.index.cancel.button.label', 'redmines', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(199, 'add.index.validation.name.required.error', 'redmines', 'Bezeichnung bitte ausfüllen'),
(200, 'add.index.validation.url.required.error', 'redmines', 'URL bitte ausfüllen'),
(201, 'add.index.validation.url.is_url.error', 'redmines', 'Das scheint keine URL zu sein, bitte achte auf den http(s):// Prefix'),
(202, 'add.index.validation.email.required.error', 'customers', 'E-Mail-Adresse erforderlich'),
(203, 'add.index.validation.company_name.required.error', 'customers', 'Firmenname erforderlich'),
(204, 'add.index.validation.firstname.required.error', 'customers', 'Vorname erforderlich'),
(205, 'add.index.validation.lastname.required.error', 'customers', 'Nachname erforderlich'),
(206, 'add.index.validation.phone.required.error', 'customers', 'Telefonnummer erforderlich'),
(207, 'add.index.validation.street.required.error', 'customers', 'Straße erforderlich'),
(208, 'add.index.validation.housenumber.required.error', 'customers', 'Hausnummer erforderlich'),
(209, 'add.index.validation.postalcode_text.required.error', 'customers', 'Postleitzahl erforderlich'),
(210, 'add.index.validation.city_text.required.error', 'customers', 'Stadt erforderlich'),
(211, 'add.index.customer[company_name].label', 'customers', 'Firmenname'),
(212, 'add.index.customer[phone].label', 'customers', 'Telefonnummer'),
(213, 'add.index.customer[fax].label', 'customers', 'Faxnummer'),
(214, 'add.index.customer[firstname].label', 'customers', 'Vorname'),
(215, 'add.index.customer[lastname].label', 'customers', 'Nachname'),
(216, 'add.index.customer[street].label', 'customers', 'Straße'),
(217, 'add.index.customer[street].label', 'customers', 'Straße'),
(218, 'add.index.customer[housenumber].label', 'customers', 'Hausnummer'),
(219, 'add.index.customer[postalcode_text].label', 'customers', 'PLZ'),
(220, 'add.index.customer[city_text].label', 'customers', 'Stadt'),
(221, 'add.index.customer[email].label', 'customers', 'E-Mail-Adresse'),
(222, 'add.index.validation.email.valid_email.error', 'customers', 'Keine korrekte E-Mail Adresse angegeben'),
(223, 'settings.redmines.label', 'nav', 'Redmine Installationen'),
(224, 'add.index.redmine[api_key].label', 'redmines', 'API Schlüssel'),
(225, 'list.index.title', 'redmines', 'Redmine Installationen'),
(226, 'delete.index.title', 'redmines', 'Redmine Installation löschen'),
(227, 'delete.index.legend', 'redmines', 'Redmine Installation wirklich löschen?'),
(228, 'delete.index.delete.button.label', 'redmines', '<i class="icon-white icon-thumbs-up"></i> Ja, die Redmine Installation löschen'),
(229, 'delete.index.cancel.button.label', 'redmines', '<i class="icon-white icon-thumbs-down"></i> Nein, abbrechen'),
(230, 'delete.index.success', 'redmines', 'Redmine Installation gelöscht'),
(231, 'list.index.add.button.label', 'redmines', '<i class="icon-white icon-plus"></i> Redmine Installation hinzufügen'),
(232, 'list.index.name.label', 'redmines', 'Bezeichnung'),
(233, 'list.index.url.label', 'redmines', 'URL'),
(234, 'list.index.api_key.label', 'redmines', 'API Schlüssel'),
(235, 'list.index.actions.label', 'redmines', 'Aktionen'),
(236, 'list.index.actions.show.label', 'redmines', '<i class="icon-list"></i> Anzeigen'),
(237, 'list.index.actions.edit.label', 'redmines', '<i class="icon-edit"></i> Bearbeiten'),
(238, 'list.index.actions.delete.label', 'redmines', '<i class="icon-trash"></i> Löschen'),
(239, 'edit.index.title', 'redmines', 'Redmine Installation bearbeiten'),
(240, 'edit.index.legend', 'redmines', 'Redmine Daten'),
(241, 'edit.index.redmine[name].label', 'redmines', 'Bezeichnung'),
(242, 'edit.index.redmine[url].label', 'redmines', 'URL (inkl. http(s)://)'),
(243, 'edit.index.redmine[api_key].label', 'redmines', 'API Schlüssel'),
(244, 'edit.index.save.button.label', 'redmines', '<i class="icon-white icon-ok"></i> Redmine Installation bearbeiten'),
(245, 'edit.index.cancel.button.label', 'redmines', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(246, 'edit.index.success', 'redmines', 'Redmine Installation bearbeitet'),
(247, 'edit.index.validation.api_key.connection_succeeded.error', 'redmines', 'Der API Key ist falsch'),
(248, 'projects.list.index.redmine_project_url.label', 'customers', '<i class="icon-share"></i> Zum Redmine Projekt'),
(249, 'projects.add.index.validation.url.valid_url.error', 'customers', 'Das scheint keine URL zu sein, bitte achte auf den http(s):// Prefix'),
(250, 'settings.languages.list.title', 'core', 'Sprachübersicht'),
(251, 'settings.languages.list.add.plain.label', 'core', 'Sprache z.B. English'),
(252, 'settings.languages.list.add.button.label', 'core', '<i class="icon-white icon-plus"></i> Sprache hinzufügen'),
(253, 'settings.languages.list.id.label', 'core', '#'),
(254, 'settings.languages.list.locale.label', 'core', 'Locale'),
(255, 'settings.languages.list.language.label', 'core', 'Sprache'),
(256, 'settings.languages.list.plain.label', 'core', 'Bezeichnung'),
(257, 'settings.languages.list.default.label', 'core', 'Standard'),
(258, 'settings.languages.list.count.locales.label', 'core', 'Übersetzungen'),
(259, 'settings.languages.list.actions.label', 'core', 'Aktionen'),
(260, 'settings.languages.list.actions.edit.label', 'core', '<i class="icon-edit"></i> Bearbeiten'),
(261, 'settings.languages.list.actions.delete.label', 'core', '<i class="icon-trash"></i> Löschen'),
(262, 'settings.languages.edit.title', 'core', 'Sprache bearbeiten'),
(263, 'settings.languages.edit.legend', 'core', 'Sprachdaten'),
(264, 'settings.languages.edit.locale.label', 'core', 'Locale'),
(265, 'settings.languages.edit.language.label', 'core', 'Sprache'),
(266, 'settings.languages.edit.plain.label', 'core', 'Bezeichnung'),
(267, 'settings.languages.edit.default.label', 'core', 'Standardsprache'),
(268, 'settings.languages.edit.save.button.label', 'core', '<i class="icon-white icon-ok"></i> Sprache bearbeiten'),
(269, 'settings.languages.edit.cancel.button.label', 'core', '<i class="icon-white icon-thumbs-down"></i> Nein, abbrechen'),
(270, 'settings.languages.edit.success', 'core', 'Sprache bearbeitet'),
(271, 'settings.languages.add.title', 'core', 'Sprache hinzufügen'),
(272, 'settings.languages.add.legend', 'core', 'Sprachdaten'),
(273, 'settings.languages.add.locale.label', 'core', 'Locale'),
(274, 'settings.languages.add.language.label', 'core', 'Sprache'),
(275, 'settings.languages.add.plain.label', 'core', 'Bezeichnung'),
(276, 'settings.languages.add.default.label', 'core', 'Standardsprache'),
(277, 'settings.languages.add.save.button.label', 'core', '<i class="icon-white icon-ok"></i> Sprache speichern'),
(278, 'settings.languages.add.cancel.button.label', 'core', '<i class="icon-white icon-thumbs-down"></i> Nein, abbrechen'),
(279, 'settings.languages.delete.title', 'core', 'Sprache löschen'),
(280, 'settings.languages.delete.legend', 'core', 'Bist du sicher, das du die Sprache löschen möchtest?'),
(281, 'settings.languages.delete.delete.button.label', 'core', '<i class="icon-white icon-thumbs-up"></i> Ja, die Sprache löschen'),
(282, 'settings.languages.delete.cancel.button.label', 'core', '<i class="icon-white icon-thumbs-down"></i> Nein, abbrechen'),
(283, 'settings.languages.delete.success', 'core', 'Sprache gelöscht!'),
(284, 'settings.languages.list.actions.locales.label', 'core', 'Locales anzeigen'),
(285, 'settings.locales.list.add.button.label', 'core', '<i class="icon-white icon-plus"></i> Locale hinzufügen'),
(286, 'settings.locales.add.success', 'core', 'Locale hinzugefügt'),
(287, 'settings.locales.list.key.label', 'core', 'Key'),
(288, 'settings.locales.list.group.label', 'core', 'Gruppe'),
(289, 'settings.locales.list.value.label', 'core', 'Wert'),
(290, 'settings.locales.list.save.button.label', 'core', '<i class="icon-white icon-ok"></i> Locale speichern'),
(291, 'settings.locales.list.actions.label', 'core', 'Aktionen'),
(292, 'settings.locales.list.actions.edit.label', 'core', '<i class="icon-edit"></i> Bearbeiten'),
(294, 'settings.locales.list.actions.delete.label', 'core', '<i class="icon-trash"></i> Löschen'),
(295, 'settings.locales.list.title', 'core', 'Locale Übersicht'),
(296, 'access.denied.login.first.label', 'login', 'Bitte logge dich erst ein'),
(297, 'settings.pubkeys.list.title', 'users', 'Public Key Übersicht'),
(298, 'settings.pubkeys.list.add.button.label', 'users', '<i class="icon-white icon-plus"></i> Public Key hinzufügen'),
(299, 'settings.pubkeys.list.name.label', 'users', 'Name'),
(300, 'settings.pubkeys.list.key.label', 'users', 'Public Key'),
(301, 'settings.pubkeys.list.created_at.label', 'users', 'Erstellt'),
(302, 'settings.pubkeys.list.actions.label', 'users', 'Aktionen'),
(303, 'settings.pubkeys.list.actions.edit.label', 'users', '<i class="icon-edit"></i> Bearbeiten'),
(304, 'settings.pubkeys.list.actions.delete.label', 'users', '<i class="icon-trash"></i> Löschen'),
(305, 'settings.pubkeys.edit.title', 'users', 'Public Key bearbeiten'),
(306, 'settings.pubkeys.edit.name.label', 'users', 'Name'),
(307, 'settings.pubkeys.edit.value.label', 'users', 'Public Key'),
(308, 'settings.pubkeys.edit.save.button.label', 'users', '<i class="icon-white icon-ok"></i> Public Key speichern'),
(309, 'settings.pubkeys.edit.cancel.button.label', 'users', '<i class="icon-white icon-thumbs-down"></i> Nein, abbrechen'),
(310, 'settings.pubkeys.add.title', 'users', 'Public Key hinzufügen'),
(311, 'settings.pubkeys.add.name.label', 'users', 'Name'),
(312, 'settings.pubkeys.add.value.label', 'users', 'Public Key'),
(313, 'settings.pubkeys.add.save.button.label', 'users', '<i class="icon-white icon-ok"></i> Public Key anlegen'),
(314, 'settings.pubkeys.add.cancel.button.label', 'users', '<i class="icon-white icon-thumbs-down"></i> Nein, abbrechen'),
(315, 'settings.pubkeys.delete.title', 'users', 'Public Key löschen'),
(316, 'settings.pubkeys.delete.legend', 'users', 'Willst du den Public Key wirklich löschen?'),
(317, 'settings.pubkeys.delete.delete.button.label', 'users', '<i class="icon-white icon-thumbs-up"></i> Ja, den Public Key löschen'),
(318, 'settings.pubkeys.delete.cancel.button.label', 'users', '<i class="icon-white icon-thumbs-down"></i> Nein, abbrechen'),
(319, 'settings.pubkeys.add.success', 'users', 'Public Key angelegt'),
(320, 'settings.pubkeys.delete.success', 'users', 'Public Key gelöscht'),
(321, 'show.index.title', 'customers', 'Kontakt: :extend'),
(322, 'settings.pubkeys.add.locale', 'users', 'Public Key Daten'),
(323, 'projects.show.index.project.tab.label', 'customers', 'Projektdaten'),
(324, 'projects.show.index.redmine.tab.label', 'customers', 'Redmine Daten'),
(325, 'list.index.show.project.label', 'customers', 'Zeige Projekt "<strong>:name</strong>"'),
(326, 'settings.pubkeys.add.legend.label', 'users', 'Public Key'),
(327, 'projects.add.index.description.label', 'customers', 'Projektbeschreibung'),
(328, 'settings.locales.add.title', 'core', 'Locale hinzufügen'),
(329, 'settings.locales.add.legend', 'core', 'Locale Daten'),
(330, 'settings.locales.add.key.label', 'core', 'Key'),
(331, 'core.settings.locales.add.group.label', 'core', 'Gruppe'),
(332, 'settings.locales.add.group.label', 'core', 'Gruppe'),
(333, 'settings.locales.add.value.label', 'core', 'Inhalt'),
(334, 'settings.locales.add.save.button.label', 'core', '<i class="icon-white icon-ok"></i> Locale anlegen'),
(335, 'settings.locales.add.save_next.button.label', 'core', '<i class="icon-white icon-chevron-right"></i> Speichern und weiter'),
(336, 'settings.locales.add.cancel.button.label', 'core', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(337, 'settings.locales.add.cancel.button.label', 'core', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(338, 'settings.locales.edit.title', 'core', 'Locale bearbeiten'),
(339, 'settings.locales.edit.legend', 'core', 'Locale Daten'),
(340, 'settings.locales.edit.key.label', 'core', 'Key'),
(341, 'settings.locales.edit.group.label', 'core', 'Gruppe'),
(342, 'settings.locales.edit.value.label', 'core', 'Inhalt'),
(343, 'settings.locales.edit.save.button.label', 'core', '<i class="icon-white icon-ok"></i> Locale speichern'),
(344, 'settings.locales.edit.save_next.button.label', 'core', '<i class="icon-white icon-chevron-right"></i> Speichern und weiter bearbeiten'),
(345, 'settings.locales.edit.cancel.button.label', 'core', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(346, 'settings.locales.add.locales.help.label', 'core', 'Alle Felder sind als Pflichtfelder zu betrachten.<br>Bis auf das Feld Inhalt, solltest du einfach eine leere Zeichenkette für die Locale benutzen wollen, lasse das Feld leer.<br><br><br>Solltest du den erzeugten HTML Code bearbeiten wollen klicke dazu auf folgenden Button: <a class="btn" href="javascript:void();"><i class="icon-pencil"></i></a>'),
(348, 'settings.locales.delete.success', 'core', 'Locale wurde gelöscht'),
(349, 'settings.locales.delete.title', 'core', 'Locale löschen'),
(350, 'settings.locales.delete.legend', 'core', 'Locale wirklich löschen?'),
(351, 'settings.locales.delete.delete.button.label', 'core', '<i class="icon-white icon-thumbs-up"></i> Ja, die Locale löschen'),
(352, 'settings.locales.delete.cancel.button.label', 'core', '<i class="icon-white icon-thumbs-down"></i> Nein, abbrechen'),
(353, 'show.index.redmine.project.overview.label', 'customers.projects', 'Redmine Projekt Daten'),
(354, 'show.index.id', 'customers.projects', 'Projekt ID'),
(355, 'show.index.identifier', 'customers.projects', 'Kennung'),
(356, 'show.index.name', 'customers.projects', 'Name'),
(357, 'show.index.description', 'customers.projects', 'Beschreibung'),
(358, 'show.index.homepage', 'customers.projects', 'Homepage'),
(359, 'show.index.created_on', 'customers.projects', 'Erstellt'),
(360, 'show.index.updated_on', 'customers.projects', 'zuletzt Geändert'),
(361, 'settings.locales.edit.success', 'core', 'Locale geändert'),
(362, 'show.index.redmine.project.versions.label', 'customers.projects', 'Versionen'),
(363, 'show.index.redmine.project.versions.name.label', 'customers.projects', 'Versions Name'),
(364, 'show.index.redmine.project.versions.duedate.label', 'customers.projects', 'Fällig am'),
(365, 'show.index.redmine.project.tickets.overview.label', 'customers.projects', 'Ticket Übersicht'),
(366, 'show.index.redmine.project.count.tickets.label', 'customers.projects', 'Anzahl Tickets'),
(367, 'show.index.redmine.project.tickets.label', 'customers.projects', 'Ticketübersicht'),
(368, 'show.index.actions.edit.label', 'customers.projects', '<i class="icon-edit"></i> Projekt bearbeiten'),
(369, 'show.index.actions.delete.label', 'customers.projects', '<i class="icon-trash"></i> Projekt löschen'),
(370, 'settings.pubkeys.edit.legend.label', 'users', 'Public Key Daten'),
(371, 'settings.pubkeys.edit.save_next.button.label', 'users', 'Speichern und weiter'),
(372, 'settings.pubkeys.edit.pubkeys.help.label', 'users', 'Hilfetext'),
(373, 'settings.anchor.label', 'navigation', '<i class="icon-wrench"></i> Einstellungen <b class="caret"></b>'),
(374, 'core_settings_languages_list.anchor.label', 'navigation', '<i class="icon-list-alt"></i>  Spracheinstellungen'),
(375, 'redmines_list.anchor.label', 'navigation', '<i class="icon-list-alt"></i>  Redmineinstallationen'),
(376, 'core_dashboard.anchor.label', 'navigation', '<i class="icon-home"></i> Dashboard'),
(377, 'customers.anchor.label', 'navigation', '<i class="icon-list"></i> Kontakte'),
(378, 'user_settings.anchor.label', 'navigation', '<i class="icon-user"></i> <b class="caret"></b>'),
(379, 'user_logout.anchor.label', 'navigation', '<i class="icon-off"></i> Logout'),
(380, 'user_pubkey_settings.anchor.label', 'navigation', '<i class="icon-fire"></i> Public Key Verwaltung'),
(381, 'core_settings_user_dashboard.anchor.label', 'navigation', '<i class="icon-cog"></i> Dashboard konfigurieren'),
(382, 'settings.pubkeys.list.value.label', 'users', 'Public Key'),
(383, 'prefix.label', 'breadcrumb', 'Du befindest dich hier:'),
(384, 'settings.anchor.label', 'breadcrumb', 'Einstellungen'),
(385, 'languages.anchor.label', 'breadcrumb', 'Spracheinstellungen'),
(386, 'languages_edit.anchor.label', 'breadcrumb', 'Sprache bearbeiten'),
(387, 'core_dashboard.anchor.label', 'breadcrumb', 'Dashboard'),
(388, 'customers.anchor.label', 'breadcrumb', 'Kontakte'),
(389, 'customers_show.anchor.label', 'breadcrumb', 'Kontakt'),
(390, 'customers_edit.anchor.label', 'breadcrumb', 'Kontakt bearbeiten'),
(391, 'customers_delete.anchor.label', 'breadcrumb', 'Kontakt löschen'),
(392, 'locales_edit.anchor.label', 'breadcrumb', 'Locale bearbeiten'),
(393, 'locales_list.anchor.label', 'breadcrumb', 'Locale Übersicht'),
(394, 'customers_add.anchor.label', 'breadcrumb', 'Kontakt hinzufügen'),
(395, '404.index.page_not_found', 'core', 'Die von dir angeforderte Seite wurde nicht gefunden.'),
(396, '404.index.back_to_dashboard', 'core', 'Zurück zum Dashboard'),
(397, 'actions.label', 'last_pages', 'History'),
(398, 'button.label', 'back', '<i class="icon-chevron-left"></i> Zurück'),
(399, 'function.named_route.route_not_exists', 'exception', 'Die Route: :route_name existiert leider nicht.'),
(400, 'core_settings_languages_list.anchor.label', 'breadcrumb', 'Sprachübersicht'),
(401, 'core_settings_locales_list.anchor.label', 'breadcrumb', 'Locale Übersicht'),
(402, 'core_settings_languages_edit.anchor.label', 'breadcrumb', 'Sprache bearbeiten'),
(403, 'core_settings_locales_edit.anchor.label', 'breadcrumb', 'Locale bearbeiten'),
(404, 'core_settings_languages_delete.anchor.label', 'breadcrumb', 'Sprache löschen'),
(405, 'core_settings_locales_add.anchor.label', 'breadcrumb', 'Locale hhinzufügen'),
(406, 'core_settings_locales_delete.anchor.label', 'breadcrumb', 'Locale löschen'),
(407, 'customers_projects_list.anchor.label', 'breadcrumb', 'Projekt Übersicht'),
(408, 'customers_projects_show.anchor.label', 'breadcrumb', 'Projektanzeige'),
(409, 'customers_projects_delete.anchor.label', 'breadcrumb', 'Projekt löschen'),
(410, 'customers_projects_edit.anchor.label', 'breadcrumb', 'Projekt bearbeiten'),
(411, 'redmines_list.anchor.label', 'breadcrumb', 'Redmine Installationen'),
(412, 'redmines_add.anchor.label', 'breadcrumb', 'Redmine hinzufügen'),
(413, 'redmines_show.anchor.label', 'breadcrumb', 'Redmine Installation'),
(414, 'redmines_edit.anchor.label', 'breadcrumb', 'Redmine bearbeiten'),
(415, 'redmines_delete.anchor.label', 'breadcrumb', 'Installation löschen'),
(416, 'show.index.title', 'redmines', 'Redmine Installation'),
(417, 'settings.locales.list.filter.button.label', 'core', 'Ergebnisse filtern'),
(418, 'settings.locales.list.filter_like.button.label', 'core', 'Like Filter anwenden'),
(419, 'settings.user.index.title', 'core', 'Dashboard konfigurieren'),
(420, 'user_settings.anchor.label', 'breadcrumb', 'Nutzereinstellungen'),
(421, 'core_settings_user_dashboard.anchor.label', 'breadcrumb', 'Dashboardkonfiguration'),
(422, 'home.anchor.label', 'breadcrumb', 'Dashboard'),
(423, 'user_pubkey_settings.anchor.label', 'breadcrumb', 'Public Key Verwaltung'),
(424, 'srit.observer_translated.property.not.exists', 'exception', 'Das Property :property existiert nicht!'),
(425, 'srit.observer_localized.properties.empty', 'exception', 'Observer Properties in :model nicht bekannt.'),
(426, 'users_settings_profile_edit.anchor.label', 'breadcrumb', 'Profil bearbeiten'),
(427, 'settings.profile.edit.title', 'users', 'Mein Profil'),
(428, 'settings.profile.edit.profile.tab.label', 'users', 'Meine Daten'),
(429, 'settings.profile.edit.password.tab.label', 'users', 'Passwort ändern'),
(430, 'settings.profile.edit.user_profile[firstname].label', 'users', 'Vorname'),
(431, 'settings.profile.edit.user_profile[lastname].label', 'users', 'Nachname'),
(432, 'settings.profile.edit.user_profile[birthday].label', 'users', 'Geburtstag'),
(433, 'settings.profile.edit.save.button.label', 'users', '<i class="icon-white icon-ok"></i> Speichern'),
(434, 'settings.profile.edit.cancel.button.label', 'users', '<i class="icon-white icon-thumbs-down"></i> Abbrechen'),
(435, 'settings.locales.add.tab.de.label', 'core', '<i class="flag flag-de"></i> Deutsch'),
(436, 'settings.locales.add.value_de.label', 'core', 'Inhalt'),
(437, 'settings.profile.edit.save_next.button.label', 'users', '<i class="icon-white icon-ok"></i> Speichern'),
(438, 'settings.profile.edit.success', 'users', 'Gespeichert'),
(439, 'settings.profile.edit.change_password.success', 'users', 'Passwort geändert'),
(440, 'settings.profile.edit.user[password].label', 'users', 'Neues Passwort'),
(441, 'settings.profile.edit.user[password_repeat].label', 'users', 'Neues Passwort wiederholen'),
(442, 'users_settings_profile_edit.anchor.label', 'navigation', '<i class="famfamfam user-edit"></i> Mein Profil'),
(443, 'settings.locales.edit.tab.de.label', 'core', '<i class="flag flag-de"></i> Deutsch'),
(444, 'settings.modules.list.title', 'core', 'Modulübersicht');