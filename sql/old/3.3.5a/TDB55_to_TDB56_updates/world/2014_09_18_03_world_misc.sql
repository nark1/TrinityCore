UPDATE `smart_scripts` SET `link`=9 WHERE  `entryorguid`=24023 AND `source_type`=0 AND `id`=8 AND `link`=8;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=24023 AND `source_type`=0 AND `id`=9 AND `link`=8;

DELETE FROM `creature_text` WHERE `entry` IN(23780,24041,23778,24252,28313);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`,`BroadcastTextID`) VALUES
(23780, 1, 0, 'Send these scumbags back to hell!  Fire at will!', 14, 0, 100, 0, 0, 0, 'High Executor Anselm',22687),
(23780, 2, 0, 'Archers at the ready!  Hold your fire!', 14, 0, 100, 0, 0, 0, 'High Executor Anselm',22662),
(23780, 3, 0, 'What fool dares to enter her majesty''s dominion unannounced?', 14, 0, 100, 0, 0, 0, 'High Executor Anselm',22663),
(23780, 4, 0, 'Is that all you''ve come to say?', 12, 0, 100, 0, 0, 0, 'High Executor Anselm',22686),
(24041, 0, 0, 'Arthas is prepared to offer you power beyond your imagination.  The puny army you lead here would pale in comparison to the phalanxes at your command if you returned to the Scourge''s embrace.', 12, 0, 100, 0, 0, 0, 'Prince Keleseth',22671),
(24041, 1, 0, 'Behold the Vrykul!   A race that has perfected war and destruction to the point of an art form.  Already they''ve cast their lot with the Lich King!  Their dwellings surround you and their numbers are easily five times yours.', 12, 0, 100, 0, 0, 0, 'Prince Keleseth',22722),
(24041, 2, 0, 'The choice is yours, Anselm.  Return to the Lich King''s army and fight alongside them or remain loyal to your so-called queen and suffer their wrath as they drive you from their homelands!', 12, 0, 100, 0, 0, 0, 'Prince Keleseth',22723),
(24041, 3, 0, 'Such a futile gesture.', 12, 0, 100, 0, 0, 0, 'Prince Keleseth',22758),
(24041, 4, 0, 'Listen to your men''s dying breaths as I drink in their souls!', 12, 0, 100, 0, 0, 0, 'Prince Keleseth',22766),
(24041, 5, 0, 'This will not be the last you hear of me.  I will return to spit on your corpse after Utgarde''s armies have descended upon you!', 12, 0, 100, 25, 0, 0, 'Prince Keleseth',22764),
(23778, 0, 0, 'Keep them split from their main force!', 14, 0, 100, 0, 0, 0, 'Dark Ranger Lyana',22382),
(23778, 0, 1, 'Cover fire, now!', 14, 0, 100, 0, 0, 0, 'Dark Ranger Lyana',22381),
(23778, 0, 2, 'Keep firing!  Cut off their reinforcements!', 14, 0, 100, 0, 0, 0, 'Dark Ranger Lyana',22380),
(24252, 0, 0, 'The foot bone''s connected to the... hip bone!  The hip bone''s connected to this... other bone!  Hmmmhmmmmhmmm...', 12, 1, 100, 0, 0, 0, '"Hacksaw" Jenny',23066),
(24252, 0, 1, 'It''s hard work putting these things together!', 12, 1, 100, 0, 0, 0, '"Hacksaw" Jenny',23065),
(28313, 0, 0, 'Longrunner, your fodder... err, people will be a valuable resource against the vrykul. Did I say resource? I meant, ''ally.'' ', 12, 1, 100, 25, 0, 0, 'Apothecary Scyllis',27727);

DELETE FROM `creature_summon_groups` WHERE `summonerId`=23780;
INSERT INTO `creature_summon_groups` (`summonerId`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`) VALUES
(23780, 0, 1, 24041, 1872.434, -6088.859, 16.2164, 4.480728, 1, 120000),
(23780, 0, 1, 24044, 1874.466, -6086.84, 16.18892, 4.502949, 1, 120000),
(23780, 0, 1, 24044, 1869.646, -6086.073, 15.54029, 4.572762, 1, 120000),
(23780, 0, 1, 24044, 1874.853, -6082.172, 15.52153, 4.502949, 1, 120000),
(23780, 0, 1, 24044, 1869.973, -6082.041, 15.13161, 4.572762, 1, 120000),

(23780, 0, 2, 23883, 1860.395, -6158.918, 23.70322, 1.48353, 1, 120000),
(23780, 0, 2, 23883, 1861.823, -6159.1, 23.71347, 1.518436, 1, 120000),
(23780, 0, 2, 23883, 1863.592, -6159.383, 23.73547, 1.570796, 1, 120000),
(23780, 0, 2, 23883, 1865.439, -6159.756, 23.76573, 1.58825, 1, 120000),
(23780, 0, 2, 23883, 1867.87, -6161.885, 23.78007, 1.64061, 1, 120000),
(23780, 0, 2, 23883, 1865.965, -6161.611, 23.77313, 1.605703, 1, 120000),
(23780, 0, 2, 23883, 1867.106, -6160.068, 23.77399, 1.64061, 1, 120000),
(23780, 0, 2, 23883, 1860.735, -6160.702, 23.73123, 1.64061, 1, 120000),
(23780, 0, 2, 23883, 1862.237, -6161.036, 23.74415, 1.53589, 1, 120000),
(23780, 0, 2, 23883, 1864.234, -6161.245, 23.76622, 1.570796, 1, 120000);

UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`IN(23780,24041,24044,23883,23778,24252,28314);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(23780,24044,24041,2378000,23883,2404400,2404401,2404402,2404403,23778,24252,28314);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(23778, 0, 0, 0, 1, 0, 100, 0, 0, 45000, 90000, 180000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dark Ranger Lyana - OOC - Say'),
(24252, 0, 0, 0, 1, 0, 100, 0, 0, 90000, 180000, 360000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '"Hacksaw" Jenny - OOC - Say'),
(28314, 0, 0, 0, 19, 0, 100, 0, 12566, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 28313, 0, 0, 0, 0, 0, 0, 'Longrunner Nanik - On Quest Accept (Help for camp Winterhoof) - Say on Apothecary Scyllis'),
(23883, 0, 0, 0, 1, 2, 100, 0, 0, 2000, 2000, 3000, 11, 42905, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Crossbowman - OOC (Phase 2) - Cast Time-Warped Shoot'),
(23883, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Crossbowman - On Data Set - Set Phase 2'),
(23883, 0, 2, 0, 38, 0, 100, 0, 2, 2, 0, 0, 11, 45254, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Crossbowman - On Data Set - Cast Suicide'),
(23883, 0, 3, 0, 54, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Crossbowman - On Just Summoned - Set Passive'),
(23780, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - On Spawn - Set Phase 2'),
(23780, 0, 1, 0, 20, 2, 100, 0, 11234, 0, 0, 0, 80, 2378000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - On Quest Reward (Report to Anselm) - Run Script'),
(24041, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 53, 0, 24041, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Prince Keleseth - On Just Summoned - Start WP'),
(24041, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Prince Keleseth - On Just Summoned - Set Passive'),
(24041, 0, 2, 0, 40, 0, 100, 0, 2, 24041, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 24044, 0, 200, 0, 0, 0, 0, 'Prince Keleseth - On Just Summoned - Set Data'),
(24041, 0, 3, 0, 38, 0, 100, 0, 1, 1, 0, 0, 11, 42982, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Prince Keleseth - On Data Set - Cast Vampire Prince Teleport'),
(24041, 0, 4, 0, 38, 0, 100, 0, 2, 2, 0, 0, 11, 43056, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Prince Keleseth - On Data Set - Cast Vampire Soul Retrieve Channel'),
(24044, 0, 5, 0, 38, 0, 100, 0, 3, 3, 0, 0, 11, 43066, 0, 0, 0, 0, 0, 19, 23883, 0, 0, 0, 0, 0, 0, 'Prince Keleseth - On Data Set - Cast Cone of Cold'),
(24044, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 87, 2404400,2404401,2404402,2404403, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Winterskorn Guard - On Data Set - Run Random script'),
(24044, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Winterskorn Guard - On Just Summoned - Set Passive'),
(24044, 0, 2, 0, 38, 0, 100, 0, 2, 2, 0, 0, 17, 375, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Winterskorn Guard - On Data Set - Set Emote State STATE_READY2H'),
(2404400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 0, 2404400, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Winterskorn Guard - Script 1 - Set WP Path 1'),
(2404401, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 0, 2404401, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Winterskorn Guard - Script 2 - Set WP Path 2'),
(2404402, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 0, 2404402, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Winterskorn Guard - Script 3 - Set WP Path 3'),
(2404403, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 0, 2404403, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Winterskorn Guard - Script 4 - Set WP Path 4'),
(2378000, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Set Phase 1'),
(2378000, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 107, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Summon Group 1'),
(2378000, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Say'),
(2378000, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 107, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Summon Group 2'),
(2378000, 9, 4, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Say'),
(2378000, 9, 5, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 24041, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Say'),
(2378000, 9, 6, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 24041, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Say'),
(2378000, 9, 7, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, 24041, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Say'),
(2378000, 9, 8, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Say'),
(2378000, 9, 9, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 23883, 0, 200, 0, 0, 0, 0, 'High Executor Anselm - Script - Set Data on Forsaken Crossbow Man'),
(2378000, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 9, 24044, 0, 200, 0, 0, 0, 0, 'High Executor Anselm - Script - Set Data on Forsaken Crossbow Man'),
(2378000, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Say'),
(2378000, 9, 12, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, 24041, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Say'),
(2378000, 9, 13, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 45, 3, 3, 0, 0, 0, 0, 9, 24044, 0, 200, 0, 0, 0, 0, 'High Executor Anselm - Script - Set Data on Forsaken Crossbow Man'),
(2378000, 9, 14, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 24041, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Say'),
(2378000, 9, 15, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 45, 2, 2, 0, 0, 0, 0, 9, 23883, 0, 200, 0, 0, 0, 0, 'High Executor Anselm - Script - Set Data on Forsaken Crossbow Man'),
(2378000, 9, 16, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, 24041, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Say'),
(2378000, 9, 17, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 19, 24041, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Say'),
(2378000, 9, 18, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 19, 24041, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Say'),
(2378000, 9, 19, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Set Phase 2'),
(2378000, 9, 20, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, 24041, 0, 0, 0, 0, 0, 0, 'High Executor Anselm - Script - Despawn Prince Keleseth'),
(2378000, 9, 21, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 9, 24044, 0, 200, 0, 0, 0, 0, 'High Executor Anselm - Script - Despawn Prince Keleseth');


DELETE FROM `waypoints` WHERE `entry` IN(24041,2404400,2404401,2404402,2404403);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(24041, 1,1869.068, -6103.232, 18.61364, 'Prince Keleseth'),
(24041, 2,1868.818, -6103.982, 18.61364, 'Prince Keleseth'),
(24041, 3,1868.568, -6107.982, 19.11364, 'Prince Keleseth'),
(24041, 4,1868.068, -6111.732, 19.61364, 'Prince Keleseth'),
(24041, 5,1867.818, -6114.482, 20.36364, 'Prince Keleseth'),
(24041, 6,1867.64, -6114.858, 20.70264, 'Prince Keleseth'),
(24041, 7, 1867.64, -6114.858, 20.70264, 'Prince Keleseth'),
(24041, 8,1867.39, -6115.358, 20.70264, 'Prince Keleseth'),
(24041, 9,1866.89, -6118.108, 21.20264, 'Prince Keleseth'),
(24041, 10,1866.64, -6120.108, 21.95264, 'Prince Keleseth'),
(24041, 11,1865.917, -6123.001, 22.53001, 'Prince Keleseth'),
(24041, 12,1865.417, -6128.001, 23.28001, 'Prince Keleseth'),
(2404400, 1,1875.425, -6090.365, 17.16468, 'Winterskorn Guard'),
(2404400, 2,1872.005, -6118.739, 21.11884, 'Winterskorn Guard'),
(2404400, 3,1871.447, -6121.616, 22.15128, 'Winterskorn Guard'),
(2404400, 4,1870.969, -6123.601, 23.02849, 'Winterskorn Guard'),
(2404400, 5,1870.273, -6129.765, 23.70144, 'Winterskorn Guard'),
(2404400, 6,1868.965, -6133.233, 23.70714, 'Winterskorn Guard'),
(2404400, 7,1869.78, -6135.36, 23.69079, 'Winterskorn Guard'),
(2404401, 1,1872.459, -6087.843, 16.14432, 'Winterskorn Guard'),
(2404401, 2,1875.459, -6089.593, 16.89432, 'Winterskorn Guard'),
(2404401, 3,1874.702, -6092.098, 16.92072, 'Winterskorn Guard'),
(2404401, 4,1870.703, -6117.124, 20.66587, 'Winterskorn Guard'),
(2404401, 5,1870.083, -6119.843, 21.78509, 'Winterskorn Guard'),
(2404401, 6,1869.592, -6122.629, 22.48122, 'Winterskorn Guard'),
(2404401, 7,1869.204, -6126.333, 23.55935, 'Winterskorn Guard'),
(2404402, 1,1869.436, -6101.171, 17.9098, 'Winterskorn Guard'),
(2404402, 2,1868.036, -6112.884, 19.76395, 'Winterskorn Guard'),
(2404402, 3,1867.521, -6115.753, 20.59173, 'Winterskorn Guard'),
(2404402, 4,1866.822, -6117.842, 21.29473, 'Winterskorn Guard'),
(2404402, 5,1866.265, -6120.752, 21.82966, 'Winterskorn Guard'),
(2404402, 6,1865.867, -6124.451, 22.92881, 'Winterskorn Guard'),
(2404403, 1,1865.726, -6101.417, 17.51821, 'Winterskorn Guard'),
(2404403, 2,1865.292, -6105.095, 18.34744, 'Winterskorn Guard'),
(2404403, 3,1864.667, -6110.865, 19.50322, 'Winterskorn Guard'),
(2404403, 4,1864.29, -6113.655, 19.8951, 'Winterskorn Guard'),
(2404403, 5,1863.765, -6115.762, 20.65482, 'Winterskorn Guard'),
(2404403, 6,1863.103, -6118.501, 21.33856, 'Winterskorn Guard'),
(2404403, 7,1862.853, -6120.251, 22.08856, 'Winterskorn Guard'),
(2404403, 8,1862.581, -6121.738, 22.45348, 'Winterskorn Guard'),
(2404403, 9,1862.182, -6125.501, 23.30622, 'Winterskorn Guard');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN(42905,43066,43055,43053,42982,43056,43054);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 42905, 0, 0, 31, 0, 3, 24044, 0, 0, 0, 0, '', 'Time-Warped Shoot targets Winterskorn Guard'),
(13, 1, 43055, 0, 0, 31, 0, 3, 23883, 0, 0, 0, 0, '', 'Vampire Soul Retrieve targets Forsaken Crossbowman'),
(13, 1, 43053, 0, 0, 31, 0, 3, 24041, 0, 0, 0, 0, '', 'Vampire Soul Expel targets Prince Keleseth'),
(13, 1, 42982, 0, 0, 31, 0, 3, 23883, 0, 0, 0, 0, '', 'Vampire Prince Teleport targets Forsaken Crossbowman'),
(13, 1, 43056, 0, 0, 31, 0, 3, 23883, 0, 0, 0, 0, '', 'Vampire Soul Retrieve channel targets Forsaken Crossbowman'),
(13, 2, 43056, 0, 0, 31, 0, 3, 23883, 0, 0, 0, 0, '', 'Vampire Soul Retrieve channel targets Forsaken Crossbowman'),
(13, 1, 43054, 0, 0, 31, 0, 3, 24041, 0, 0, 0, 0, '', 'Vampire Soul Expel Channeltargets Prince Keleseth');
