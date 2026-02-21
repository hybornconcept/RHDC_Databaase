-- ============================================================
-- RHDC SEED DATA
-- ============================================================
-- Users (admins, support, judges, participants)
INSERT INTO users (
        user_id,
        full_name,
        email,
        password_hash,
        role,
        phone,
        country
    )
VALUES (
        'a6f3d9dd-d79d-42f1-949d-28a67e1f4451',
        'RH Admin',
        'admin@remotehustle.io',
        '$2b$12$adminhashadminhashadmin',
        'admin',
        '+2348000000001',
        'Nigeria'
    ),
    (
        '82628c9d-76ed-4e6d-b291-4437d6e46b31',
        'RH Support',
        'support@remotehustle.io',
        '$2b$12$supporthashsupporthash',
        'support',
        '+2348000000002',
        'Nigeria'
    ),
    (
        '0630ff65-8f55-4944-885d-39a244da6835',
        'Obinna Mansaray',
        'judge1@remotehustle.io',
        '$2b$12$judgehash1judgehash1',
        'judge',
        '+2348000000010',
        'Uganda'
    ),
    (
        'd5d991d5-7fcb-49d8-9c0f-0af28c971936',
        'Kanu Kourouma',
        'judge2@remotehustle.io',
        '$2b$12$judgehash2judgehash2',
        'judge',
        '+2348000000011',
        'Uganda'
    ),
    (
        '61dfca65-0f11-4981-92bd-34a2ae20890c',
        'Chidi Fofanah',
        'judge3@remotehustle.io',
        '$2b$12$judgehash3judgehash3',
        'judge',
        '+2348000000012',
        'Kenya'
    ),
    (
        '1c3654f9-1e50-4190-90d2-0a8bda10d933',
        'Amara Okafor',
        'judge4@remotehustle.io',
        '$2b$12$judgehash4judgehash4',
        'judge',
        '+2348000000013',
        'Uganda'
    ),
    (
        '48dcd427-cee2-4b38-a427-78850e4d7798',
        'Samuel Faye',
        'judge5@remotehustle.io',
        '$2b$12$judgehash5judgehash5',
        'judge',
        '+2348000000014',
        'Tanzania'
    ),
    (
        'dd01c387-8735-4b2c-9127-81e9040aacf3',
        'Amara Okafor',
        'amara.okafor0@example.com',
        '$2b$12$participanthash0participanthash',
        'participant',
        '+234811000000',
        'Senegal'
    ),
    (
        '82afb6e0-66a6-4538-9854-9733120bac78',
        'Chidi Bello',
        'chidi.bello1@example.com',
        '$2b$12$participanthash1participanthash',
        'participant',
        '+234811000001',
        'Senegal'
    ),
    (
        '7acaad49-60e0-448b-a44e-ef627e335937',
        'Emeka Adeyemi',
        'emeka.adeyemi2@example.com',
        '$2b$12$participanthash2participanthash',
        'participant',
        '+234811000002',
        'Uganda'
    ),
    (
        '26d569ef-3e5a-479c-b3e9-f35bcae6cd16',
        'Fatima Musa',
        'fatima.musa3@example.com',
        '$2b$12$participanthash3participanthash',
        'participant',
        '+234811000003',
        'Kenya'
    ),
    (
        'f7883316-6946-4b7b-8ce5-5fdf73bac111',
        'Grace Ibrahim',
        'grace.ibrahim4@example.com',
        '$2b$12$participanthash4participanthash',
        'participant',
        '+234811000004',
        'Kenya'
    ),
    (
        '48f00946-c8eb-4eb3-8e5f-29fe6240e00c',
        'Hassan Nwosu',
        'hassan.nwosu5@example.com',
        '$2b$12$participanthash5participanthash',
        'participant',
        '+234811000005',
        'Ethiopia'
    ),
    (
        '9f837c13-240b-49cc-8860-9aa534129e7b',
        'Ifeoma Osei',
        'ifeoma.osei6@example.com',
        '$2b$12$participanthash6participanthash',
        'participant',
        '+234811000006',
        'Senegal'
    ),
    (
        'bf92a237-1443-48f1-87c2-0cf373cbfd90',
        'Jude Diallo',
        'jude.diallo7@example.com',
        '$2b$12$participanthash7participanthash',
        'participant',
        '+234811000007',
        'Kenya'
    ),
    (
        '9d42424c-9bb3-4e38-b456-3da0e368bbb5',
        'Kemi Kamara',
        'kemi.kamara8@example.com',
        '$2b$12$participanthash8participanthash',
        'participant',
        '+234811000008',
        'Senegal'
    ),
    (
        '73918d62-4991-4691-87d4-9a36836c4f73',
        'Lekan Mensah',
        'lekan.mensah9@example.com',
        '$2b$12$participanthash9participanthash',
        'participant',
        '+234811000009',
        'Côte d''Ivoire'
    ),
    (
        '41e6e636-b312-4037-9a3b-5a61b1c1819c',
        'Musa Owusu',
        'musa.owusu10@example.com',
        '$2b$12$participanthash10participanthash',
        'participant',
        '+234811000010',
        'Rwanda'
    ),
    (
        '2fcf3a74-1db3-4685-bc8f-918bdc4d331a',
        'Ngozi Traore',
        'ngozi.traore11@example.com',
        '$2b$12$participanthash11participanthash',
        'participant',
        '+234811000011',
        'Uganda'
    ),
    (
        '38be788e-9c62-4c19-9067-05bbcfd00967',
        'Obinna Coulibaly',
        'obinna.coulibaly12@example.com',
        '$2b$12$participanthash12participanthash',
        'participant',
        '+234811000012',
        'Uganda'
    ),
    (
        '22ca8512-1cc5-490c-9c2b-fd888eb0d8c4',
        'Peace Keita',
        'peace.keita13@example.com',
        '$2b$12$participanthash13participanthash',
        'participant',
        '+234811000013',
        'Ghana'
    ),
    (
        'a8be2b7d-4edb-4f35-bd62-ea8d07ce0268',
        'Rashid Toure',
        'rashid.toure14@example.com',
        '$2b$12$participanthash14participanthash',
        'participant',
        '+234811000014',
        'Rwanda'
    ),
    (
        '388cbdd6-72de-4c94-b037-293add2159c1',
        'Sola Diop',
        'sola.diop15@example.com',
        '$2b$12$participanthash15participanthash',
        'participant',
        '+234811000015',
        'Ghana'
    ),
    (
        '75989c5e-7640-4910-a694-41535dcd83a2',
        'Tunde Fall',
        'tunde.fall16@example.com',
        '$2b$12$participanthash16participanthash',
        'participant',
        '+234811000016',
        'Senegal'
    ),
    (
        '82ee1f4c-a35f-43a9-8418-cb44fa6687e6',
        'Uche Ndiaye',
        'uche.ndiaye17@example.com',
        '$2b$12$participanthash17participanthash',
        'participant',
        '+234811000017',
        'Côte d''Ivoire'
    ),
    (
        'c4d5ada4-e15d-46f0-ac05-6ce466d0a1dd',
        'Vivian Sow',
        'vivian.sow18@example.com',
        '$2b$12$participanthash18participanthash',
        'participant',
        '+234811000018',
        'Tanzania'
    ),
    (
        '016c6aa7-057c-4f52-964e-1357d2dcec6a',
        'Wale Ba',
        'wale.ba19@example.com',
        '$2b$12$participanthash19participanthash',
        'participant',
        '+234811000019',
        'Senegal'
    ),
    (
        'f65da737-5684-4fe4-9120-4dc88e06157e',
        'Ada Sall',
        'ada.sall20@example.com',
        '$2b$12$participanthash20participanthash',
        'participant',
        '+234811000020',
        'Ghana'
    ),
    (
        'f3818bb1-488b-47f8-92b2-5ed4e24dee8b',
        'Bello Diouf',
        'bello.diouf21@example.com',
        '$2b$12$participanthash21participanthash',
        'participant',
        '+234811000021',
        'Tanzania'
    ),
    (
        '65dd70a9-8f24-42b0-a28f-44990febd9ce',
        'Chinwe Cisse',
        'chinwe.cisse22@example.com',
        '$2b$12$participanthash22participanthash',
        'participant',
        '+234811000022',
        'Ghana'
    ),
    (
        '247aa83e-7b25-454c-9e6c-d834a99e0573',
        'Damilola Wade',
        'damilola.wade23@example.com',
        '$2b$12$participanthash23participanthash',
        'participant',
        '+234811000023',
        'Rwanda'
    ),
    (
        '48f36ecf-edbe-45af-a22c-847621ee275a',
        'Eze Faye',
        'eze.faye24@example.com',
        '$2b$12$participanthash24participanthash',
        'participant',
        '+234811000024',
        'Ethiopia'
    ),
    (
        '116b1bd1-879c-4cff-9c11-bd5770850aa0',
        'Funke Dembele',
        'funke.dembele25@example.com',
        '$2b$12$participanthash25participanthash',
        'participant',
        '+234811000025',
        'Senegal'
    ),
    (
        '9e219986-c48a-4180-a01b-b4d36f137205',
        'Gbenga Kone',
        'gbenga.kone26@example.com',
        '$2b$12$participanthash26participanthash',
        'participant',
        '+234811000026',
        'Senegal'
    ),
    (
        '60b90675-24d3-48c2-9ec0-40e501e56a28',
        'Halima Sangare',
        'halima.sangare27@example.com',
        '$2b$12$participanthash27participanthash',
        'participant',
        '+234811000027',
        'Kenya'
    ),
    (
        '044a4bca-fe2b-4ed5-a36c-ffd66a92173f',
        'Ife Sylla',
        'ife.sylla28@example.com',
        '$2b$12$participanthash28participanthash',
        'participant',
        '+234811000028',
        'Kenya'
    ),
    (
        '774af567-910e-4106-95a2-57b003d25b91',
        'John Bah',
        'john.bah29@example.com',
        '$2b$12$participanthash29participanthash',
        'participant',
        '+234811000029',
        'Cameroon'
    ),
    (
        '9056ea58-f4ef-4adc-92d5-7250af532781',
        'Kola Soumah',
        'kola.soumah30@example.com',
        '$2b$12$participanthash30participanthash',
        'participant',
        '+234811000030',
        'Côte d''Ivoire'
    ),
    (
        '0d092916-3bdf-4e5b-8aa6-cde24d9123ed',
        'Lola Camara',
        'lola.camara31@example.com',
        '$2b$12$participanthash31participanthash',
        'participant',
        '+234811000031',
        'Uganda'
    ),
    (
        '241a9121-db20-4b68-845c-cd869b3fcc43',
        'Mike Kouyate',
        'mike.kouyate32@example.com',
        '$2b$12$participanthash32participanthash',
        'participant',
        '+234811000032',
        'Nigeria'
    ),
    (
        'dd83768c-5285-4e26-90da-94e3ab440e01',
        'Nkem Conde',
        'nkem.conde33@example.com',
        '$2b$12$participanthash33participanthash',
        'participant',
        '+234811000033',
        'Kenya'
    ),
    (
        '69de9bd2-cce6-44ef-9d84-e58fc12587c5',
        'Ola Barry',
        'ola.barry34@example.com',
        '$2b$12$participanthash34participanthash',
        'participant',
        '+234811000034',
        'Cameroon'
    ),
    (
        '4d74d49c-e9cb-47f5-aa03-42805ece65f9',
        'Priya Doumbouya',
        'priya.doumbouya35@example.com',
        '$2b$12$participanthash35participanthash',
        'participant',
        '+234811000035',
        'Kenya'
    ),
    (
        'a586d7d6-2cf4-4fc4-abcb-f9b83fcb7f94',
        'Queen Kaba',
        'queen.kaba36@example.com',
        '$2b$12$participanthash36participanthash',
        'participant',
        '+234811000036',
        'Nigeria'
    ),
    (
        '999a4145-fb7c-4db7-b70e-0347941eee39',
        'Remi Kourouma',
        'remi.kourouma37@example.com',
        '$2b$12$participanthash37participanthash',
        'participant',
        '+234811000037',
        'Nigeria'
    ),
    (
        '4a7bd919-9f0d-493d-bc71-482ce01f2af7',
        'Seun Savane',
        'seun.savane38@example.com',
        '$2b$12$participanthash38participanthash',
        'participant',
        '+234811000038',
        'Tanzania'
    ),
    (
        'fef33530-6e2c-466a-aef9-956f832507b3',
        'Tobi Balde',
        'tobi.balde39@example.com',
        '$2b$12$participanthash39participanthash',
        'participant',
        '+234811000039',
        'Ghana'
    ),
    (
        '2ad7a26c-78c4-49ba-af39-766b2561bf4c',
        'Uzor Adama',
        'uzor.adama40@example.com',
        '$2b$12$participanthash40participanthash',
        'participant',
        '+234811000040',
        'Cameroon'
    ),
    (
        '8487b0df-547c-42f5-9d6d-f5112bbab04c',
        'Victor Sesay',
        'victor.sesay41@example.com',
        '$2b$12$participanthash41participanthash',
        'participant',
        '+234811000041',
        'Cameroon'
    ),
    (
        '7c9ca55a-9e28-4bd7-bf27-7355af284ed4',
        'Wunmi Conteh',
        'wunmi.conteh42@example.com',
        '$2b$12$participanthash42participanthash',
        'participant',
        '+234811000042',
        'Tanzania'
    ),
    (
        '98615019-ec83-4bd4-aae0-68b88ef2ccfe',
        'Xander Bangura',
        'xander.bangura43@example.com',
        '$2b$12$participanthash43participanthash',
        'participant',
        '+234811000043',
        'Tanzania'
    ),
    (
        '604189dc-e8c6-4387-9c4f-491f5cf807d0',
        'Yemi Koroma',
        'yemi.koroma44@example.com',
        '$2b$12$participanthash44participanthash',
        'participant',
        '+234811000044',
        'Ethiopia'
    ),
    (
        '22916364-7230-4aa1-8e32-1784341cc387',
        'Zara Turay',
        'zara.turay45@example.com',
        '$2b$12$participanthash45participanthash',
        'participant',
        '+234811000045',
        'Tanzania'
    ),
    (
        '3896f64f-018e-4b7e-9c2e-49a08bc312cb',
        'Ade Mansaray',
        'ade.mansaray46@example.com',
        '$2b$12$participanthash46participanthash',
        'participant',
        '+234811000046',
        'Tanzania'
    ),
    (
        '25731156-7306-4dfd-83f5-996485b57616',
        'Bunmi Fofanah',
        'bunmi.fofanah47@example.com',
        '$2b$12$participanthash47participanthash',
        'participant',
        '+234811000047',
        'Côte d''Ivoire'
    ),
    (
        '16575e0e-6544-47cf-b30d-f491555baaba',
        'Chibundo Koker',
        'chibundo.koker48@example.com',
        '$2b$12$participanthash48participanthash',
        'participant',
        '+234811000048',
        'Uganda'
    ),
    (
        '82c12ce3-d992-4b70-9b8f-b30303cda327',
        'Dele Jalloh',
        'dele.jalloh49@example.com',
        '$2b$12$participanthash49participanthash',
        'participant',
        '+234811000049',
        'Ethiopia'
    ),
    (
        'acb651bd-3df3-4b83-a67a-537664355390',
        'Efosa Okafor',
        'efosa.okafor50@example.com',
        '$2b$12$participanthash50participanthash',
        'participant',
        '+234811000050',
        'Tanzania'
    ),
    (
        '632b34ba-54d6-4a42-a1dd-21141f087a9a',
        'Fola Bello',
        'fola.bello51@example.com',
        '$2b$12$participanthash51participanthash',
        'participant',
        '+234811000051',
        'Côte d''Ivoire'
    ),
    (
        'ac093459-6838-44ef-a55e-edee601ac5ed',
        'Gideon Adeyemi',
        'gideon.adeyemi52@example.com',
        '$2b$12$participanthash52participanthash',
        'participant',
        '+234811000052',
        'Rwanda'
    ),
    (
        '5b3e383b-2348-406a-8939-117d7836f06f',
        'Helen Musa',
        'helen.musa53@example.com',
        '$2b$12$participanthash53participanthash',
        'participant',
        '+234811000053',
        'Côte d''Ivoire'
    ),
    (
        'ab6f457b-3860-4cbe-9f66-9c356ef9ec38',
        'Idris Ibrahim',
        'idris.ibrahim54@example.com',
        '$2b$12$participanthash54participanthash',
        'participant',
        '+234811000054',
        'Côte d''Ivoire'
    ),
    (
        'd09f9121-bcae-46d5-b1e8-f57f589c4b3c',
        'Janet Nwosu',
        'janet.nwosu55@example.com',
        '$2b$12$participanthash55participanthash',
        'participant',
        '+234811000055',
        'Uganda'
    ),
    (
        'aa4dc404-5161-4c51-bb4b-fa1a3b22c420',
        'Kofi Osei',
        'kofi.osei56@example.com',
        '$2b$12$participanthash56participanthash',
        'participant',
        '+234811000056',
        'Tanzania'
    ),
    (
        'de83b8af-339b-476b-a38e-daf456ea7280',
        'Layla Diallo',
        'layla.diallo57@example.com',
        '$2b$12$participanthash57participanthash',
        'participant',
        '+234811000057',
        'Côte d''Ivoire'
    ),
    (
        '2a065c6c-dc41-4fc9-b449-543f7413b751',
        'Moses Kamara',
        'moses.kamara58@example.com',
        '$2b$12$participanthash58participanthash',
        'participant',
        '+234811000058',
        'Kenya'
    ),
    (
        '120fde48-7ed6-423b-91a1-5f3f021a0c7b',
        'Nadia Mensah',
        'nadia.mensah59@example.com',
        '$2b$12$participanthash59participanthash',
        'participant',
        '+234811000059',
        'Ethiopia'
    ),
    (
        'b0cdaf27-9eb2-43da-a4d0-834b324ca294',
        'Osas Owusu',
        'osas.owusu60@example.com',
        '$2b$12$participanthash60participanthash',
        'participant',
        '+234811000060',
        'Nigeria'
    ),
    (
        'c02610ac-5405-4ae0-a2ab-6c6b05469e17',
        'Patience Traore',
        'patience.traore61@example.com',
        '$2b$12$participanthash61participanthash',
        'participant',
        '+234811000061',
        'Ghana'
    ),
    (
        '7b689088-397b-438f-8368-909f60e4f446',
        'Quincy Coulibaly',
        'quincy.coulibaly62@example.com',
        '$2b$12$participanthash62participanthash',
        'participant',
        '+234811000062',
        'Uganda'
    ),
    (
        '3f698cac-29d6-4fcb-a323-a87e61eccf2e',
        'Rita Keita',
        'rita.keita63@example.com',
        '$2b$12$participanthash63participanthash',
        'participant',
        '+234811000063',
        'Kenya'
    ),
    (
        '31765471-b1a6-419e-95a3-14c7a65b6aa5',
        'Samuel Toure',
        'samuel.toure64@example.com',
        '$2b$12$participanthash64participanthash',
        'participant',
        '+234811000064',
        'Ethiopia'
    ),
    (
        '63a1358c-95a8-4be2-aa0e-75a4a989586e',
        'Taiwo Diop',
        'taiwo.diop65@example.com',
        '$2b$12$participanthash65participanthash',
        'participant',
        '+234811000065',
        'Cameroon'
    ),
    (
        'd144888c-eea4-46be-9537-d6c937a43043',
        'Uma Fall',
        'uma.fall66@example.com',
        '$2b$12$participanthash66participanthash',
        'participant',
        '+234811000066',
        'Ghana'
    ),
    (
        '2674a9c4-ce2c-47bf-af5e-1a86020ed4a8',
        'Vera Ndiaye',
        'vera.ndiaye67@example.com',
        '$2b$12$participanthash67participanthash',
        'participant',
        '+234811000067',
        'Ethiopia'
    ),
    (
        '7455a53b-715e-4ece-a23b-365b55852ce2',
        'Waliu Sow',
        'waliu.sow68@example.com',
        '$2b$12$participanthash68participanthash',
        'participant',
        '+234811000068',
        'Côte d''Ivoire'
    ),
    (
        'c3402ecd-8cd4-4299-9c92-3a0a3c49d677',
        'Xena Ba',
        'xena.ba69@example.com',
        '$2b$12$participanthash69participanthash',
        'participant',
        '+234811000069',
        'Cameroon'
    ),
    (
        'cc53bfbb-8ffe-4bf6-9978-f7405f2f7c1b',
        'Yusuf Sall',
        'yusuf.sall70@example.com',
        '$2b$12$participanthash70participanthash',
        'participant',
        '+234811000070',
        'Uganda'
    ),
    (
        '21e19113-797d-47f3-b51c-2b729e57e197',
        'Zainab Diouf',
        'zainab.diouf71@example.com',
        '$2b$12$participanthash71participanthash',
        'participant',
        '+234811000071',
        'Ethiopia'
    ),
    (
        '08f814d9-d448-4868-8a9a-e3cb508862aa',
        'Akachi Cisse',
        'akachi.cisse72@example.com',
        '$2b$12$participanthash72participanthash',
        'participant',
        '+234811000072',
        'Côte d''Ivoire'
    ),
    (
        '1f986200-342a-48dc-8ea7-f900fec46c31',
        'Bisola Wade',
        'bisola.wade73@example.com',
        '$2b$12$participanthash73participanthash',
        'participant',
        '+234811000073',
        'Côte d''Ivoire'
    ),
    (
        '3699fb5b-6477-4507-817e-b094260a8c07',
        'Chuks Faye',
        'chuks.faye74@example.com',
        '$2b$12$participanthash74participanthash',
        'participant',
        '+234811000074',
        'Côte d''Ivoire'
    ),
    (
        '680039f7-4d59-41f3-9d58-234c4783f748',
        'Dayo Dembele',
        'dayo.dembele75@example.com',
        '$2b$12$participanthash75participanthash',
        'participant',
        '+234811000075',
        'Nigeria'
    ),
    (
        'ce04a9f7-b752-4254-9aad-f8796964e020',
        'Edem Kone',
        'edem.kone76@example.com',
        '$2b$12$participanthash76participanthash',
        'participant',
        '+234811000076',
        'Rwanda'
    ),
    (
        '4ac2ceba-d27b-47f8-a095-e69b33f8f3aa',
        'Fatou Sangare',
        'fatou.sangare77@example.com',
        '$2b$12$participanthash77participanthash',
        'participant',
        '+234811000077',
        'Ghana'
    ),
    (
        'bca74bba-b4cf-458d-accc-10423724597d',
        'Goke Sylla',
        'goke.sylla78@example.com',
        '$2b$12$participanthash78participanthash',
        'participant',
        '+234811000078',
        'Côte d''Ivoire'
    ),
    (
        '92d4133a-8d1e-4827-bc23-2cd39d6a3477',
        'Hannah Bah',
        'hannah.bah79@example.com',
        '$2b$12$participanthash79participanthash',
        'participant',
        '+234811000079',
        'Ethiopia'
    ),
    (
        '715489b8-041c-4169-840a-f283ff841402',
        'Ike Soumah',
        'ike.soumah80@example.com',
        '$2b$12$participanthash80participanthash',
        'participant',
        '+234811000080',
        'Uganda'
    ),
    (
        'c4c53b75-ca4c-4e7e-ad04-6065d88e9052',
        'Joy Camara',
        'joy.camara81@example.com',
        '$2b$12$participanthash81participanthash',
        'participant',
        '+234811000081',
        'Nigeria'
    ),
    (
        '7e120bc1-8066-491a-b0d7-7bdf79ea351c',
        'Kanu Kouyate',
        'kanu.kouyate82@example.com',
        '$2b$12$participanthash82participanthash',
        'participant',
        '+234811000082',
        'Cameroon'
    ),
    (
        '0d3a9edb-678a-431a-b220-e249193be980',
        'Lami Conde',
        'lami.conde83@example.com',
        '$2b$12$participanthash83participanthash',
        'participant',
        '+234811000083',
        'Senegal'
    ),
    (
        'bd5d9405-d48e-4415-9217-4b2954613e60',
        'Modu Barry',
        'modu.barry84@example.com',
        '$2b$12$participanthash84participanthash',
        'participant',
        '+234811000084',
        'Ethiopia'
    ),
    (
        'cbaeac72-5048-4df3-81a2-aa1d103e27c6',
        'Nneka Doumbouya',
        'nneka.doumbouya85@example.com',
        '$2b$12$participanthash85participanthash',
        'participant',
        '+234811000085',
        'Senegal'
    ),
    (
        '8a6635ee-b9b5-451a-8a52-9a1d9b716655',
        'Obi Kaba',
        'obi.kaba86@example.com',
        '$2b$12$participanthash86participanthash',
        'participant',
        '+234811000086',
        'Côte d''Ivoire'
    ),
    (
        '535ab8bf-42f8-4dad-8a91-91e3c41334d6',
        'Pita Kourouma',
        'pita.kourouma87@example.com',
        '$2b$12$participanthash87participanthash',
        'participant',
        '+234811000087',
        'Rwanda'
    ),
    (
        'fb646f7e-95bc-44aa-9838-0d563d6fb4f5',
        'Qolade Savane',
        'qolade.savane88@example.com',
        '$2b$12$participanthash88participanthash',
        'participant',
        '+234811000088',
        'Nigeria'
    ),
    (
        '67181159-1d58-433f-825b-a4f631a2acab',
        'Rotimi Balde',
        'rotimi.balde89@example.com',
        '$2b$12$participanthash89participanthash',
        'participant',
        '+234811000089',
        'Uganda'
    ),
    (
        '5fe1ad51-5f58-403f-b1a8-9f36ac70d2b9',
        'Stella Adama',
        'stella.adama90@example.com',
        '$2b$12$participanthash90participanthash',
        'participant',
        '+234811000090',
        'Uganda'
    ),
    (
        '7794b680-d735-4134-adcd-0c9a4236d620',
        'Tayo Sesay',
        'tayo.sesay91@example.com',
        '$2b$12$participanthash91participanthash',
        'participant',
        '+234811000091',
        'Senegal'
    ),
    (
        'e6956034-f3c5-4deb-9306-51a2597303ee',
        'Udo Conteh',
        'udo.conteh92@example.com',
        '$2b$12$participanthash92participanthash',
        'participant',
        '+234811000092',
        'Ghana'
    ),
    (
        'f2f02e86-60fb-42f2-926d-3cc8a004bb7a',
        'Voke Bangura',
        'voke.bangura93@example.com',
        '$2b$12$participanthash93participanthash',
        'participant',
        '+234811000093',
        'Ethiopia'
    ),
    (
        'b3d3baa2-cea7-443c-adc6-2ed748a19108',
        'Willy Koroma',
        'willy.koroma94@example.com',
        '$2b$12$participanthash94participanthash',
        'participant',
        '+234811000094',
        'Kenya'
    ),
    (
        '9dad8a6b-6c8b-4f46-ac32-5e2444464721',
        'Ximena Turay',
        'ximena.turay95@example.com',
        '$2b$12$participanthash95participanthash',
        'participant',
        '+234811000095',
        'Cameroon'
    ),
    (
        '6219e927-dcbf-48ff-8200-93e8afe73cf7',
        'Yakubu Mansaray',
        'yakubu.mansaray96@example.com',
        '$2b$12$participanthash96participanthash',
        'participant',
        '+234811000096',
        'Tanzania'
    ),
    (
        '7f61ada6-b03d-47fd-8d40-13efacdded15',
        'Zahra Fofanah',
        'zahra.fofanah97@example.com',
        '$2b$12$participanthash97participanthash',
        'participant',
        '+234811000097',
        'Rwanda'
    ),
    (
        'd7e8f653-75c3-4cbb-9c94-959e6d20149d',
        'Akin Koker',
        'akin.koker98@example.com',
        '$2b$12$participanthash98participanthash',
        'participant',
        '+234811000098',
        'Nigeria'
    ),
    (
        '7e1c200e-4701-43d7-bca4-9b5935775e11',
        'Bose Jalloh',
        'bose.jalloh99@example.com',
        '$2b$12$participanthash99participanthash',
        'participant',
        '+234811000099',
        'Senegal'
    );
-- Stages
INSERT INTO stages (
        stage_name,
        stage_number,
        description,
        theme,
        duration_days,
        start_date,
        end_date,
        status,
        max_score
    )
VALUES (
        'Stage 1',
        1,
        'Participants build and deliver practical solutions for Data Modeling',
        'Data Modeling · Data Integrity · Operational Efficiency',
        7,
        '2025-01-10',
        '2025-01-17',
        'completed',
        100.00
    ),
    (
        'Stage 2',
        2,
        'Participants build and deliver practical solutions for System Architecture',
        'System Architecture · API Design · Scalability',
        7,
        '2025-01-24',
        '2025-01-31',
        'completed',
        100.00
    ),
    (
        'Stage 3',
        3,
        'Participants build and deliver practical solutions for Advanced Analytics',
        'Advanced Analytics · Visualization · Reporting',
        7,
        '2025-02-07',
        '2025-02-14',
        'active',
        100.00
    ),
    (
        'Stage 4',
        4,
        'Participants build and deliver practical solutions for Security',
        'Security · Optimization · Final Integration',
        7,
        '2025-02-21',
        '2025-02-28',
        'upcoming',
        100.00
    );
-- Participants
INSERT INTO participants (
        participant_id,
        user_id,
        registration_no,
        cohort,
        track,
        bio,
        github_url,
        linkedin_url,
        status
    )
VALUES (
        'c1761e0e-08e3-42af-a4de-8119a4a88b77',
        'dd01c387-8735-4b2c-9127-81e9040aacf3',
        'RH-2025-0001',
        'Cohort-A 2025',
        'Digital Marketing',
        'Passionate Digital Marketing enthusiast from Uganda.',
        'https://github.com/amaraokafor0',
        'https://linkedin.com/in/amara-okafor-0',
        'active'
    ),
    (
        '5886e3ec-e1cd-47cb-b883-10ac8fe075ea',
        '82afb6e0-66a6-4538-9854-9733120bac78',
        'RH-2025-0002',
        'Cohort-A 2025',
        'UI/UX Design',
        'Passionate UI/UX Design enthusiast from Kenya.',
        'https://github.com/chidibello1',
        'https://linkedin.com/in/chidi-bello-1',
        'disqualified'
    ),
    (
        '9154727f-1e7a-46f9-88b5-1fcb263eb23d',
        '7acaad49-60e0-448b-a44e-ef627e335937',
        'RH-2025-0003',
        'Cohort-C 2024',
        'Digital Marketing',
        'Passionate Digital Marketing enthusiast from Ethiopia.',
        'https://github.com/emekaadeyemi2',
        'https://linkedin.com/in/emeka-adeyemi-2',
        'withdrawn'
    ),
    (
        '64be9e71-68a3-43ff-8738-d8852ecf1d76',
        '26d569ef-3e5a-479c-b3e9-f35bcae6cd16',
        'RH-2025-0004',
        'Cohort-A 2025',
        'UI/UX Design',
        'Passionate UI/UX Design enthusiast from Ethiopia.',
        'https://github.com/fatimamusa3',
        'https://linkedin.com/in/fatima-musa-3',
        'active'
    ),
    (
        '0b788b7e-b136-4568-b1d8-b9b7856d5a8b',
        'f7883316-6946-4b7b-8ce5-5fdf73bac111',
        'RH-2025-0005',
        'Cohort-A 2025',
        'Blockchain',
        'Passionate Blockchain enthusiast from Tanzania.',
        'https://github.com/graceibrahim4',
        'https://linkedin.com/in/grace-ibrahim-4',
        'withdrawn'
    ),
    (
        '1ba99f56-fcaa-4b7c-a40e-b01c7231a136',
        '48f00946-c8eb-4eb3-8e5f-29fe6240e00c',
        'RH-2025-0006',
        'Cohort-A 2025',
        'Digital Marketing',
        'Passionate Digital Marketing enthusiast from Cameroon.',
        'https://github.com/hassannwosu5',
        'https://linkedin.com/in/hassan-nwosu-5',
        'completed'
    ),
    (
        'af8f1aaa-fe28-4e3d-a552-3424b14611f1',
        '9f837c13-240b-49cc-8860-9aa534129e7b',
        'RH-2025-0007',
        'Cohort-A 2024',
        'Data Analytics',
        'Passionate Data Analytics enthusiast from Tanzania.',
        'https://github.com/ifeomaosei6',
        'https://linkedin.com/in/ifeoma-osei-6',
        'disqualified'
    ),
    (
        '34f3225a-61d8-4940-8e0f-1d6373792bcf',
        'bf92a237-1443-48f1-87c2-0cf373cbfd90',
        'RH-2025-0008',
        'Cohort-C 2024',
        'DevOps',
        'Passionate DevOps enthusiast from Senegal.',
        'https://github.com/judediallo7',
        'https://linkedin.com/in/jude-diallo-7',
        'active'
    ),
    (
        '164012d6-4392-4b6f-99a7-94619ef46d9c',
        '9d42424c-9bb3-4e38-b456-3da0e368bbb5',
        'RH-2025-0009',
        'Cohort-A 2024',
        'Machine Learning',
        'Passionate Machine Learning enthusiast from Uganda.',
        'https://github.com/kemikamara8',
        'https://linkedin.com/in/kemi-kamara-8',
        'disqualified'
    ),
    (
        'ddc5a9dc-b818-4c23-8a5d-d4214117e424',
        '73918d62-4991-4691-87d4-9a36836c4f73',
        'RH-2025-0010',
        'Cohort-A 2025',
        'DevOps',
        'Passionate DevOps enthusiast from Cameroon.',
        'https://github.com/lekanmensah9',
        'https://linkedin.com/in/lekan-mensah-9',
        'withdrawn'
    ),
    (
        '0e972161-55c7-4128-a0a4-602edf3a1275',
        '41e6e636-b312-4037-9a3b-5a61b1c1819c',
        'RH-2025-0011',
        'Cohort-A 2024',
        'Cybersecurity',
        'Passionate Cybersecurity enthusiast from Ethiopia.',
        'https://github.com/musaowusu10',
        'https://linkedin.com/in/musa-owusu-10',
        'active'
    ),
    (
        'e48cb07b-1740-4ba1-80fc-f1440d50df46',
        '2fcf3a74-1db3-4685-bc8f-918bdc4d331a',
        'RH-2025-0012',
        'Cohort-A 2025',
        'Blockchain',
        'Passionate Blockchain enthusiast from Nigeria.',
        'https://github.com/ngozitraore11',
        'https://linkedin.com/in/ngozi-traore-11',
        'completed'
    ),
    (
        '2ae45cef-32fd-4edb-a00f-0b90871a481e',
        '38be788e-9c62-4c19-9067-05bbcfd00967',
        'RH-2025-0013',
        'Cohort-A 2025',
        'UI/UX Design',
        'Passionate UI/UX Design enthusiast from Ethiopia.',
        'https://github.com/obinnacoulibaly12',
        'https://linkedin.com/in/obinna-coulibaly-12',
        'active'
    ),
    (
        'bbd5378d-3b30-41c8-bf7b-aba8672d1f00',
        '22ca8512-1cc5-490c-9c2b-fd888eb0d8c4',
        'RH-2025-0014',
        'Cohort-A 2025',
        'Blockchain',
        'Passionate Blockchain enthusiast from Nigeria.',
        'https://github.com/peacekeita13',
        'https://linkedin.com/in/peace-keita-13',
        'active'
    ),
    (
        '357e3216-f539-4522-ae4a-d2b9dd28effe',
        'a8be2b7d-4edb-4f35-bd62-ea8d07ce0268',
        'RH-2025-0015',
        'Cohort-A 2024',
        'Product Management',
        'Passionate Product Management enthusiast from Kenya.',
        'https://github.com/rashidtoure14',
        'https://linkedin.com/in/rashid-toure-14',
        'disqualified'
    ),
    (
        'f1c78630-6369-4caf-8cf2-895fef3ea2d1',
        '388cbdd6-72de-4c94-b037-293add2159c1',
        'RH-2025-0016',
        'Cohort-A 2024',
        'Software Development',
        'Passionate Software Development enthusiast from Côte d''Ivoire.',
        'https://github.com/soladiop15',
        'https://linkedin.com/in/sola-diop-15',
        'active'
    ),
    (
        'eac9acfa-a69f-4a46-8565-c1aed38df1ac',
        '75989c5e-7640-4910-a694-41535dcd83a2',
        'RH-2025-0017',
        'Cohort-A 2025',
        'Cloud Computing',
        'Passionate Cloud Computing enthusiast from Cameroon.',
        'https://github.com/tundefall16',
        'https://linkedin.com/in/tunde-fall-16',
        'disqualified'
    ),
    (
        '2bfb8eab-1f3c-49f2-8066-9c53abbe3456',
        '82ee1f4c-a35f-43a9-8418-cb44fa6687e6',
        'RH-2025-0018',
        'Cohort-B 2024',
        'Cloud Computing',
        'Passionate Cloud Computing enthusiast from Uganda.',
        'https://github.com/uchendiaye17',
        'https://linkedin.com/in/uche-ndiaye-17',
        'active'
    ),
    (
        '4361a4f8-aca2-419c-9024-b9fd74d33719',
        'c4d5ada4-e15d-46f0-ac05-6ce466d0a1dd',
        'RH-2025-0019',
        'Cohort-A 2025',
        'Machine Learning',
        'Passionate Machine Learning enthusiast from Cameroon.',
        'https://github.com/viviansow18',
        'https://linkedin.com/in/vivian-sow-18',
        'disqualified'
    ),
    (
        'b0bbc237-6a5b-4c3a-9a8b-01c3188becae',
        '016c6aa7-057c-4f52-964e-1357d2dcec6a',
        'RH-2025-0020',
        'Cohort-B 2024',
        'DevOps',
        'Passionate DevOps enthusiast from Ethiopia.',
        'https://github.com/waleba19',
        'https://linkedin.com/in/wale-ba-19',
        'disqualified'
    ),
    (
        'd75ad7fd-8201-48a8-97a0-a8f075fb2516',
        'f65da737-5684-4fe4-9120-4dc88e06157e',
        'RH-2025-0021',
        'Cohort-B 2024',
        'Machine Learning',
        'Passionate Machine Learning enthusiast from Nigeria.',
        'https://github.com/adasall20',
        'https://linkedin.com/in/ada-sall-20',
        'withdrawn'
    ),
    (
        'b93a156f-62db-4f6f-b678-c2014d6e62c4',
        'f3818bb1-488b-47f8-92b2-5ed4e24dee8b',
        'RH-2025-0022',
        'Cohort-B 2024',
        'Blockchain',
        'Passionate Blockchain enthusiast from Cameroon.',
        'https://github.com/bellodiouf21',
        'https://linkedin.com/in/bello-diouf-21',
        'completed'
    ),
    (
        '15418b23-41ef-4c9c-987c-0b0230f0e39b',
        '65dd70a9-8f24-42b0-a28f-44990febd9ce',
        'RH-2025-0023',
        'Cohort-B 2024',
        'Cloud Computing',
        'Passionate Cloud Computing enthusiast from Cameroon.',
        'https://github.com/chinwecisse22',
        'https://linkedin.com/in/chinwe-cisse-22',
        'completed'
    ),
    (
        '14dac916-a994-4e0d-a373-7f259f004a19',
        '247aa83e-7b25-454c-9e6c-d834a99e0573',
        'RH-2025-0024',
        'Cohort-A 2025',
        'Cloud Computing',
        'Passionate Cloud Computing enthusiast from Uganda.',
        'https://github.com/damilolawade23',
        'https://linkedin.com/in/damilola-wade-23',
        'disqualified'
    ),
    (
        '292c3357-0b60-4408-a882-de3b379f5284',
        '48f36ecf-edbe-45af-a22c-847621ee275a',
        'RH-2025-0025',
        'Cohort-B 2024',
        'Digital Marketing',
        'Passionate Digital Marketing enthusiast from Nigeria.',
        'https://github.com/ezefaye24',
        'https://linkedin.com/in/eze-faye-24',
        'disqualified'
    ),
    (
        '0db175a1-fe90-4362-b156-5215275f80ba',
        '116b1bd1-879c-4cff-9c11-bd5770850aa0',
        'RH-2025-0026',
        'Cohort-B 2024',
        'Cybersecurity',
        'Passionate Cybersecurity enthusiast from Nigeria.',
        'https://github.com/funkedembele25',
        'https://linkedin.com/in/funke-dembele-25',
        'disqualified'
    ),
    (
        '47ad5cbb-436e-4dcf-9543-ccdbebb901bc',
        '9e219986-c48a-4180-a01b-b4d36f137205',
        'RH-2025-0027',
        'Cohort-A 2025',
        'UI/UX Design',
        'Passionate UI/UX Design enthusiast from Senegal.',
        'https://github.com/gbengakone26',
        'https://linkedin.com/in/gbenga-kone-26',
        'withdrawn'
    ),
    (
        '638b7911-45b8-4703-917c-c6f93a51aa95',
        '60b90675-24d3-48c2-9ec0-40e501e56a28',
        'RH-2025-0028',
        'Cohort-A 2025',
        'Digital Marketing',
        'Passionate Digital Marketing enthusiast from Cameroon.',
        'https://github.com/halimasangare27',
        'https://linkedin.com/in/halima-sangare-27',
        'active'
    ),
    (
        '0935c341-d912-4ecb-ab39-11569de69b49',
        '044a4bca-fe2b-4ed5-a36c-ffd66a92173f',
        'RH-2025-0029',
        'Cohort-C 2024',
        'Product Management',
        'Passionate Product Management enthusiast from Senegal.',
        'https://github.com/ifesylla28',
        'https://linkedin.com/in/ife-sylla-28',
        'withdrawn'
    ),
    (
        '73fa5879-d3d1-47c2-bec9-b1ab078be458',
        '774af567-910e-4106-95a2-57b003d25b91',
        'RH-2025-0030',
        'Cohort-C 2024',
        'DevOps',
        'Passionate DevOps enthusiast from Rwanda.',
        'https://github.com/johnbah29',
        'https://linkedin.com/in/john-bah-29',
        'active'
    ),
    (
        '2486c81d-dc21-4edb-85ad-6311a5ff6c0f',
        '9056ea58-f4ef-4adc-92d5-7250af532781',
        'RH-2025-0031',
        'Cohort-B 2024',
        'Blockchain',
        'Passionate Blockchain enthusiast from Senegal.',
        'https://github.com/kolasoumah30',
        'https://linkedin.com/in/kola-soumah-30',
        'active'
    ),
    (
        'b78fa810-c106-4b99-a2ea-e95b8418f567',
        '0d092916-3bdf-4e5b-8aa6-cde24d9123ed',
        'RH-2025-0032',
        'Cohort-A 2024',
        'Product Management',
        'Passionate Product Management enthusiast from Kenya.',
        'https://github.com/lolacamara31',
        'https://linkedin.com/in/lola-camara-31',
        'active'
    ),
    (
        '36d85c85-884b-44b8-9a14-72f93698be2a',
        '241a9121-db20-4b68-845c-cd869b3fcc43',
        'RH-2025-0033',
        'Cohort-A 2025',
        'Cloud Computing',
        'Passionate Cloud Computing enthusiast from Ethiopia.',
        'https://github.com/mikekouyate32',
        'https://linkedin.com/in/mike-kouyate-32',
        'disqualified'
    ),
    (
        '39d6181f-8bf9-482c-9887-46771d6e1511',
        'dd83768c-5285-4e26-90da-94e3ab440e01',
        'RH-2025-0034',
        'Cohort-A 2025',
        'Cloud Computing',
        'Passionate Cloud Computing enthusiast from Senegal.',
        'https://github.com/nkemconde33',
        'https://linkedin.com/in/nkem-conde-33',
        'active'
    ),
    (
        'ce0f3662-b174-4bd3-983e-b705ed2054be',
        '69de9bd2-cce6-44ef-9d84-e58fc12587c5',
        'RH-2025-0035',
        'Cohort-C 2024',
        'DevOps',
        'Passionate DevOps enthusiast from Cameroon.',
        'https://github.com/olabarry34',
        'https://linkedin.com/in/ola-barry-34',
        'active'
    ),
    (
        '11c8cbc5-0708-4672-9fda-f61cac251957',
        '4d74d49c-e9cb-47f5-aa03-42805ece65f9',
        'RH-2025-0036',
        'Cohort-B 2024',
        'Data Analytics',
        'Passionate Data Analytics enthusiast from Nigeria.',
        'https://github.com/priyadoumbouya35',
        'https://linkedin.com/in/priya-doumbouya-35',
        'withdrawn'
    ),
    (
        'dbdae313-ea62-4b06-ae0c-4b142c9ba767',
        'a586d7d6-2cf4-4fc4-abcb-f9b83fcb7f94',
        'RH-2025-0037',
        'Cohort-A 2025',
        'Product Management',
        'Passionate Product Management enthusiast from Nigeria.',
        'https://github.com/queenkaba36',
        'https://linkedin.com/in/queen-kaba-36',
        'active'
    ),
    (
        'aa48e40e-93ba-4cab-bbd2-bc92cd09bb75',
        '999a4145-fb7c-4db7-b70e-0347941eee39',
        'RH-2025-0038',
        'Cohort-C 2024',
        'DevOps',
        'Passionate DevOps enthusiast from Nigeria.',
        'https://github.com/remikourouma37',
        'https://linkedin.com/in/remi-kourouma-37',
        'active'
    ),
    (
        '4c2ec7f4-538d-49b7-959a-c931fb1c7cc5',
        '4a7bd919-9f0d-493d-bc71-482ce01f2af7',
        'RH-2025-0039',
        'Cohort-A 2024',
        'Product Management',
        'Passionate Product Management enthusiast from Ethiopia.',
        'https://github.com/seunsavane38',
        'https://linkedin.com/in/seun-savane-38',
        'active'
    ),
    (
        '25192bb5-2a58-4e09-a49e-748e858db2f0',
        'fef33530-6e2c-466a-aef9-956f832507b3',
        'RH-2025-0040',
        'Cohort-A 2025',
        'Data Analytics',
        'Passionate Data Analytics enthusiast from Senegal.',
        'https://github.com/tobibalde39',
        'https://linkedin.com/in/tobi-balde-39',
        'withdrawn'
    ),
    (
        'dbc5cb33-8535-4721-b368-39f25e5edd8c',
        '2ad7a26c-78c4-49ba-af39-766b2561bf4c',
        'RH-2025-0041',
        'Cohort-B 2024',
        'Cybersecurity',
        'Passionate Cybersecurity enthusiast from Ghana.',
        'https://github.com/uzoradama40',
        'https://linkedin.com/in/uzor-adama-40',
        'completed'
    ),
    (
        '7f191d8b-0d00-4d86-b2a9-0c1030f9ca01',
        '8487b0df-547c-42f5-9d6d-f5112bbab04c',
        'RH-2025-0042',
        'Cohort-A 2024',
        'Data Analytics',
        'Passionate Data Analytics enthusiast from Kenya.',
        'https://github.com/victorsesay41',
        'https://linkedin.com/in/victor-sesay-41',
        'active'
    ),
    (
        'b3feb566-570f-4262-a0b5-362d7f4e6185',
        '7c9ca55a-9e28-4bd7-bf27-7355af284ed4',
        'RH-2025-0043',
        'Cohort-A 2025',
        'Cybersecurity',
        'Passionate Cybersecurity enthusiast from Uganda.',
        'https://github.com/wunmiconteh42',
        'https://linkedin.com/in/wunmi-conteh-42',
        'active'
    ),
    (
        '526006dc-21f0-4e52-8297-6f84df864b3e',
        '98615019-ec83-4bd4-aae0-68b88ef2ccfe',
        'RH-2025-0044',
        'Cohort-C 2024',
        'Cloud Computing',
        'Passionate Cloud Computing enthusiast from Tanzania.',
        'https://github.com/xanderbangura43',
        'https://linkedin.com/in/xander-bangura-43',
        'active'
    ),
    (
        '0ecb5768-f71e-463e-add9-b83c53a1a39d',
        '604189dc-e8c6-4387-9c4f-491f5cf807d0',
        'RH-2025-0045',
        'Cohort-C 2024',
        'Cybersecurity',
        'Passionate Cybersecurity enthusiast from Senegal.',
        'https://github.com/yemikoroma44',
        'https://linkedin.com/in/yemi-koroma-44',
        'active'
    ),
    (
        'a851537b-adda-4bca-8d7d-fb5ce55830f4',
        '22916364-7230-4aa1-8e32-1784341cc387',
        'RH-2025-0046',
        'Cohort-C 2024',
        'Machine Learning',
        'Passionate Machine Learning enthusiast from Senegal.',
        'https://github.com/zaraturay45',
        'https://linkedin.com/in/zara-turay-45',
        'active'
    ),
    (
        '6378bc7d-35b2-4553-8e50-fc6da07c92d9',
        '3896f64f-018e-4b7e-9c2e-49a08bc312cb',
        'RH-2025-0047',
        'Cohort-A 2025',
        'Blockchain',
        'Passionate Blockchain enthusiast from Cameroon.',
        'https://github.com/ademansaray46',
        'https://linkedin.com/in/ade-mansaray-46',
        'active'
    ),
    (
        '73c74017-a87d-4c17-8aaf-22a4eecb2e68',
        '25731156-7306-4dfd-83f5-996485b57616',
        'RH-2025-0048',
        'Cohort-A 2025',
        'Digital Marketing',
        'Passionate Digital Marketing enthusiast from Ghana.',
        'https://github.com/bunmifofanah47',
        'https://linkedin.com/in/bunmi-fofanah-47',
        'active'
    ),
    (
        'dbbb32bf-2a83-4c4b-a4bc-26abb41e8081',
        '16575e0e-6544-47cf-b30d-f491555baaba',
        'RH-2025-0049',
        'Cohort-C 2024',
        'DevOps',
        'Passionate DevOps enthusiast from Tanzania.',
        'https://github.com/chibundokoker48',
        'https://linkedin.com/in/chibundo-koker-48',
        'withdrawn'
    ),
    (
        'e0556836-0c63-44cb-b21b-1ec833302dd9',
        '82c12ce3-d992-4b70-9b8f-b30303cda327',
        'RH-2025-0050',
        'Cohort-B 2024',
        'Product Management',
        'Passionate Product Management enthusiast from Ghana.',
        'https://github.com/delejalloh49',
        'https://linkedin.com/in/dele-jalloh-49',
        'disqualified'
    ),
    (
        'd4f8a50f-3172-43e7-be9e-9f85d10ebf89',
        'acb651bd-3df3-4b83-a67a-537664355390',
        'RH-2025-0051',
        'Cohort-A 2025',
        'UI/UX Design',
        'Passionate UI/UX Design enthusiast from Ethiopia.',
        'https://github.com/efosaokafor50',
        'https://linkedin.com/in/efosa-okafor-50',
        'active'
    ),
    (
        'e30f5418-534b-457a-b394-3d5bfb6e3606',
        '632b34ba-54d6-4a42-a1dd-21141f087a9a',
        'RH-2025-0052',
        'Cohort-C 2024',
        'Cloud Computing',
        'Passionate Cloud Computing enthusiast from Uganda.',
        'https://github.com/folabello51',
        'https://linkedin.com/in/fola-bello-51',
        'withdrawn'
    ),
    (
        '3ba6c79e-d0ca-416e-8a0f-35cd9f09ec41',
        'ac093459-6838-44ef-a55e-edee601ac5ed',
        'RH-2025-0053',
        'Cohort-A 2024',
        'Cloud Computing',
        'Passionate Cloud Computing enthusiast from Cameroon.',
        'https://github.com/gideonadeyemi52',
        'https://linkedin.com/in/gideon-adeyemi-52',
        'completed'
    ),
    (
        '9e3f71c6-fb1a-46ef-a93c-e9d3e7893fe2',
        '5b3e383b-2348-406a-8939-117d7836f06f',
        'RH-2025-0054',
        'Cohort-B 2024',
        'Software Development',
        'Passionate Software Development enthusiast from Ivory Coast.',
        'https://github.com/helenmusa53',
        'https://linkedin.com/in/helen-musa-53',
        'active'
    ),
    (
        'f8901ebe-7ee8-4550-a678-5c4d17329afa',
        'ab6f457b-3860-4cbe-9f66-9c356ef9ec38',
        'RH-2025-0055',
        'Cohort-B 2024',
        'Software Development',
        'Passionate Software Development enthusiast from Ethiopia.',
        'https://github.com/idrisibrahim54',
        'https://linkedin.com/in/idris-ibrahim-54',
        'active'
    ),
    (
        'bc3561c1-f4cf-4a6d-9997-bbbc68609a4a',
        'd09f9121-bcae-46d5-b1e8-f57f589c4b3c',
        'RH-2025-0056',
        'Cohort-B 2024',
        'Digital Marketing',
        'Passionate Digital Marketing enthusiast from Nigeria.',
        'https://github.com/janetnwosu55',
        'https://linkedin.com/in/janet-nwosu-55',
        'completed'
    ),
    (
        '33748c44-af9d-4234-8f06-e6bebfbe92e0',
        'aa4dc404-5161-4c51-bb4b-fa1a3b22c420',
        'RH-2025-0057',
        'Cohort-B 2024',
        'Product Management',
        'Passionate Product Management enthusiast from Cameroon.',
        'https://github.com/kofiosei56',
        'https://linkedin.com/in/kofi-osei-56',
        'withdrawn'
    ),
    (
        '347a5e2e-3df4-49da-8382-724de979eb0b',
        'de83b8af-339b-476b-a38e-daf456ea7280',
        'RH-2025-0058',
        'Cohort-A 2025',
        'UI/UX Design',
        'Passionate UI/UX Design enthusiast from Tanzania.',
        'https://github.com/layladiallo57',
        'https://linkedin.com/in/layla-diallo-57',
        'active'
    ),
    (
        '09e37979-7dee-46c1-b768-d0e857e6493b',
        '2a065c6c-dc41-4fc9-b449-543f7413b751',
        'RH-2025-0059',
        'Cohort-A 2025',
        'UI/UX Design',
        'Passionate UI/UX Design enthusiast from Uganda.',
        'https://github.com/moseskamara58',
        'https://linkedin.com/in/moses-kamara-58',
        'active'
    ),
    (
        '8ead40f1-e0eb-4d4d-be08-c0072e83f50b',
        '120fde48-7ed6-423b-91a1-5f3f021a0c7b',
        'RH-2025-0060',
        'Cohort-C 2024',
        'Cloud Computing',
        'Passionate Cloud Computing enthusiast from Tanzania.',
        'https://github.com/nadiamensah59',
        'https://linkedin.com/in/nadia-mensah-59',
        'completed'
    ),
    (
        'b00e9d2e-f775-44d6-91b8-17427f2e7bf1',
        'b0cdaf27-9eb2-43da-a4d0-834b324ca294',
        'RH-2025-0061',
        'Cohort-A 2024',
        'Product Management',
        'Passionate Product Management enthusiast from Côte d''Ivoire.',
        'https://github.com/osasowusu60',
        'https://linkedin.com/in/osas-owusu-60',
        'completed'
    ),
    (
        'b8ea32ea-2394-43f2-87b2-5e9c2c9fd084',
        'c02610ac-5405-4ae0-a2ab-6c6b05469e17',
        'RH-2025-0062',
        'Cohort-B 2024',
        'Machine Learning',
        'Passionate Machine Learning enthusiast from Nigeria.',
        'https://github.com/patiencetraore61',
        'https://linkedin.com/in/patience-traore-61',
        'active'
    ),
    (
        'ff725831-c9b4-4bd5-824f-a53e2e803629',
        '7b689088-397b-438f-8368-909f60e4f446',
        'RH-2025-0063',
        'Cohort-A 2024',
        'DevOps',
        'Passionate DevOps enthusiast from Ethiopia.',
        'https://github.com/quincycoulibaly62',
        'https://linkedin.com/in/quincy-coulibaly-62',
        'active'
    ),
    (
        'cb585814-361e-409a-b088-9c8d5e085a2f',
        '3f698cac-29d6-4fcb-a323-a87e61eccf2e',
        'RH-2025-0064',
        'Cohort-A 2024',
        'Software Development',
        'Passionate Software Development enthusiast from Rwanda.',
        'https://github.com/ritakeita63',
        'https://linkedin.com/in/rita-keita-63',
        'active'
    ),
    (
        '090bad72-4b3e-4b69-8adc-6833ec5bb5d7',
        '31765471-b1a6-419e-95a3-14c7a65b6aa5',
        'RH-2025-0065',
        'Cohort-B 2024',
        'Product Management',
        'Passionate Product Management enthusiast from Senegal.',
        'https://github.com/samueltoure64',
        'https://linkedin.com/in/samuel-toure-64',
        'active'
    ),
    (
        'c447a958-25b1-49d8-a85e-717edfc7aff4',
        '63a1358c-95a8-4be2-aa0e-75a4a989586e',
        'RH-2025-0066',
        'Cohort-A 2025',
        'Product Management',
        'Passionate Product Management enthusiast from Tanzania.',
        'https://github.com/taiwodiop65',
        'https://linkedin.com/in/taiwo-diop-65',
        'active'
    ),
    (
        '9e5bac0b-d8cd-4453-995f-fdcdd13f4bf8',
        'd144888c-eea4-46be-9537-d6c937a43043',
        'RH-2025-0067',
        'Cohort-A 2025',
        'UI/UX Design',
        'Passionate UI/UX Design enthusiast from Ghana.',
        'https://github.com/umafall66',
        'https://linkedin.com/in/uma-fall-66',
        'active'
    ),
    (
        '5a34f2ac-36fa-4795-a3c9-3b082c29c4f0',
        '2674a9c4-ce2c-47bf-af5e-1a86020ed4a8',
        'RH-2025-0068',
        'Cohort-B 2024',
        'Product Management',
        'Passionate Product Management enthusiast from Uganda.',
        'https://github.com/verandiaye67',
        'https://linkedin.com/in/vera-ndiaye-67',
        'disqualified'
    ),
    (
        '35da41d1-2cb9-44e7-8157-48f836574dbf',
        '7455a53b-715e-4ece-a23b-365b55852ce2',
        'RH-2025-0069',
        'Cohort-B 2024',
        'DevOps',
        'Passionate DevOps enthusiast from Ethiopia.',
        'https://github.com/waliusow68',
        'https://linkedin.com/in/waliu-sow-68',
        'disqualified'
    ),
    (
        'b37b7dac-3314-4e73-bd21-81b7861e092e',
        'c3402ecd-8cd4-4299-9c92-3a0a3c49d677',
        'RH-2025-0070',
        'Cohort-A 2024',
        'Data Analytics',
        'Passionate Data Analytics enthusiast from Rwanda.',
        'https://github.com/xenaba69',
        'https://linkedin.com/in/xena-ba-69',
        'active'
    ),
    (
        '6e47d756-44d9-4cc0-901a-cfbfd667a594',
        'cc53bfbb-8ffe-4bf6-9978-f7405f2f7c1b',
        'RH-2025-0071',
        'Cohort-B 2024',
        'Machine Learning',
        'Passionate Machine Learning enthusiast from Kenya.',
        'https://github.com/yusufsall70',
        'https://linkedin.com/in/yusuf-sall-70',
        'active'
    ),
    (
        'b3b4ae38-4d0c-4148-ac8e-e746e5b5045e',
        '21e19113-797d-47f3-b51c-2b729e57e197',
        'RH-2025-0072',
        'Cohort-B 2024',
        'Cybersecurity',
        'Passionate Cybersecurity enthusiast from Kenya.',
        'https://github.com/zainabdiouf71',
        'https://linkedin.com/in/zainab-diouf-71',
        'active'
    ),
    (
        '509d5e13-b7e7-4ff8-9197-a32b7227db4f',
        '08f814d9-d448-4868-8a9a-e3cb508862aa',
        'RH-2025-0073',
        'Cohort-B 2024',
        'DevOps',
        'Passionate DevOps enthusiast from Côte d''Ivoire.',
        'https://github.com/akachicisse72',
        'https://linkedin.com/in/akachi-cisse-72',
        'completed'
    ),
    (
        '018dde79-0039-4c85-8da6-7594e06cdac1',
        '1f986200-342a-48dc-8ea7-f900fec46c31',
        'RH-2025-0074',
        'Cohort-A 2024',
        'DevOps',
        'Passionate DevOps enthusiast from Cameroon.',
        'https://github.com/bisolawade73',
        'https://linkedin.com/in/bisola-wade-73',
        'disqualified'
    ),
    (
        '8a0c0813-4bd0-4f72-88ee-93f8300ccb3d',
        '3699fb5b-6477-4507-817e-b094260a8c07',
        'RH-2025-0075',
        'Cohort-A 2024',
        'Data Analytics',
        'Passionate Data Analytics enthusiast from Kenya.',
        'https://github.com/chuksfaye74',
        'https://linkedin.com/in/chuks-faye-74',
        'disqualified'
    ),
    (
        '8e7e9479-b82c-4cbf-a741-b21e3c70a799',
        '680039f7-4d59-41f3-9d58-234c4783f748',
        'RH-2025-0076',
        'Cohort-B 2024',
        'Software Development',
        'Passionate Software Development enthusiast from Ethiopia.',
        'https://github.com/dayodembele75',
        'https://linkedin.com/in/dayo-dembele-75',
        'active'
    ),
    (
        'f3bbd869-0f17-4fe7-badc-bc6d46372762',
        'ce04a9f7-b752-4254-9aad-f8796964e020',
        'RH-2025-0077',
        'Cohort-C 2024',
        'Digital Marketing',
        'Passionate Digital Marketing enthusiast from Nigeria.',
        'https://github.com/edemkone76',
        'https://linkedin.com/in/edem-kone-76',
        'active'
    ),
    (
        '6d26101c-bbf0-4deb-b841-f8cc9c99a97e',
        '4ac2ceba-d27b-47f8-a095-e69b33f8f3aa',
        'RH-2025-0078',
        'Cohort-A 2025',
        'Blockchain',
        'Passionate Blockchain enthusiast from Uganda.',
        'https://github.com/fatousangare77',
        'https://linkedin.com/in/fatou-sangare-77',
        'active'
    ),
    (
        '2fd90c93-5557-4b21-86fd-066e99ac84e9',
        'bca74bba-b4cf-458d-accc-10423724597d',
        'RH-2025-0079',
        'Cohort-A 2024',
        'Blockchain',
        'Passionate Blockchain enthusiast from Tanzania.',
        'https://github.com/gokesylla78',
        'https://linkedin.com/in/goke-sylla-78',
        'completed'
    ),
    (
        '75f2f517-6d1b-46f6-8c68-0e1a4fd21bd5',
        '92d4133a-8d1e-4827-bc23-2cd39d6a3477',
        'RH-2025-0080',
        'Cohort-A 2024',
        'Product Management',
        'Passionate Product Management enthusiast from Rwanda.',
        'https://github.com/hannahbah79',
        'https://linkedin.com/in/hannah-bah-79',
        'completed'
    ),
    (
        '1af6a6ec-4780-48b2-9697-44a7771cf357',
        '715489b8-041c-4169-840a-f283ff841402',
        'RH-2025-0081',
        'Cohort-C 2024',
        'Cybersecurity',
        'Passionate Cybersecurity enthusiast from Rwanda.',
        'https://github.com/ikesoumah80',
        'https://linkedin.com/in/ike-soumah-80',
        'disqualified'
    ),
    (
        '8feceb22-95d7-471c-ba61-1126b47c69e2',
        'c4c53b75-ca4c-4e7e-ad04-6065d88e9052',
        'RH-2025-0082',
        'Cohort-B 2024',
        'Blockchain',
        'Passionate Blockchain enthusiast from Rwanda.',
        'https://github.com/joycamara81',
        'https://linkedin.com/in/joy-camara-81',
        'active'
    ),
    (
        '71b74689-7982-47bb-b240-1505fdf76622',
        '7e120bc1-8066-491a-b0d7-7bdf79ea351c',
        'RH-2025-0083',
        'Cohort-C 2024',
        'Data Analytics',
        'Passionate Data Analytics enthusiast from Côte d''Ivoire.',
        'https://github.com/kanukouyate82',
        'https://linkedin.com/in/kanu-kouyate-82',
        'active'
    ),
    (
        'd56973ca-c5ea-42ef-aaf6-a066d2b29aa0',
        '0d3a9edb-678a-431a-b220-e249193be980',
        'RH-2025-0084',
        'Cohort-A 2024',
        'Cybersecurity',
        'Passionate Cybersecurity enthusiast from Ethiopia.',
        'https://github.com/lamiconde83',
        'https://linkedin.com/in/lami-conde-83',
        'active'
    ),
    (
        '64e54ba7-3d11-48e7-b23e-5404e44b6fb8',
        'bd5d9405-d48e-4415-9217-4b2954613e60',
        'RH-2025-0085',
        'Cohort-C 2024',
        'Software Development',
        'Passionate Software Development enthusiast from Tanzania.',
        'https://github.com/modubarry84',
        'https://linkedin.com/in/modu-barry-84',
        'active'
    ),
    (
        '72e5af64-7130-493f-a92f-0920288a4693',
        'cbaeac72-5048-4df3-81a2-aa1d103e27c6',
        'RH-2025-0086',
        'Cohort-B 2024',
        'Data Analytics',
        'Passionate Data Analytics enthusiast from Tanzania.',
        'https://github.com/nnekadoumbouya85',
        'https://linkedin.com/in/nneka-doumbouya-85',
        'active'
    ),
    (
        '7ee1101b-db4d-4b2c-9b60-d77c6c95c461',
        '8a6635ee-b9b5-451a-8a52-9a1d9b716655',
        'RH-2025-0087',
        'Cohort-A 2024',
        'DevOps',
        'Passionate DevOps enthusiast from Tanzania.',
        'https://github.com/obikaba86',
        'https://linkedin.com/in/obi-kaba-86',
        'active'
    ),
    (
        'b36eec62-620e-4449-b40b-b3e47fbe2db1',
        '535ab8bf-42f8-4dad-8a91-91e3c41334d6',
        'RH-2025-0088',
        'Cohort-A 2025',
        'Digital Marketing',
        'Passionate Digital Marketing enthusiast from Senegal.',
        'https://github.com/pitakourouma87',
        'https://linkedin.com/in/pita-kourouma-87',
        'active'
    ),
    (
        'cbc8ddd4-853e-4655-ad96-2342020b04e1',
        'fb646f7e-95bc-44aa-9838-0d563d6fb4f5',
        'RH-2025-0089',
        'Cohort-A 2024',
        'Data Analytics',
        'Passionate Data Analytics enthusiast from Uganda.',
        'https://github.com/qoladesavane88',
        'https://linkedin.com/in/qolade-savane-88',
        'active'
    ),
    (
        'dc5eb9ec-4777-4eb6-ae67-237bd8785e5e',
        '67181159-1d58-433f-825b-a4f631a2acab',
        'RH-2025-0090',
        'Cohort-B 2024',
        'UI/UX Design',
        'Passionate UI/UX Design enthusiast from Uganda.',
        'https://github.com/rotimibalde89',
        'https://linkedin.com/in/rotimi-balde-89',
        'withdrawn'
    ),
    (
        '8d500cd1-4147-4f7e-b2a3-f364bf6b8231',
        '5fe1ad51-5f58-403f-b1a8-9f36ac70d2b9',
        'RH-2025-0091',
        'Cohort-A 2025',
        'UI/UX Design',
        'Passionate UI/UX Design enthusiast from Kenya.',
        'https://github.com/stellaadama90',
        'https://linkedin.com/in/stella-adama-90',
        'active'
    ),
    (
        '750947b0-90b4-4370-9cc0-089c86cb94fe',
        '7794b680-d735-4134-adcd-0c9a4236d620',
        'RH-2025-0092',
        'Cohort-B 2024',
        'Blockchain',
        'Passionate Blockchain enthusiast from Nigeria.',
        'https://github.com/tayosesay91',
        'https://linkedin.com/in/tayo-sesay-91',
        'active'
    ),
    (
        'a6050b3d-8221-4a9c-af56-271f08612f94',
        'e6956034-f3c5-4deb-9306-51a2597303ee',
        'RH-2025-0093',
        'Cohort-A 2024',
        'Machine Learning',
        'Passionate Machine Learning enthusiast from Cameroon.',
        'https://github.com/udoconteh92',
        'https://linkedin.com/in/udo-conteh-92',
        'active'
    ),
    (
        'c2887ead-dea5-4744-9611-2b41ce55f846',
        'f2f02e86-60fb-42f2-926d-3cc8a004bb7a',
        'RH-2025-0094',
        'Cohort-A 2024',
        'Blockchain',
        'Passionate Blockchain enthusiast from Tanzania.',
        'https://github.com/vokebangura93',
        'https://linkedin.com/in/voke-bangura-93',
        'active'
    ),
    (
        'a12d4137-abf7-4f40-856e-87cbb2a96a0d',
        'b3d3baa2-cea7-443c-adc6-2ed748a19108',
        'RH-2025-0095',
        'Cohort-A 2025',
        'UI/UX Design',
        'Passionate UI/UX Design enthusiast from Tanzania.',
        'https://github.com/willykoroma94',
        'https://linkedin.com/in/willy-koroma-94',
        'active'
    ),
    (
        'd9ad9285-23e5-4545-ab4e-be3b5d5ebc06',
        '9dad8a6b-6c8b-4f46-ac32-5e2444464721',
        'RH-2025-0096',
        'Cohort-C 2024',
        'Machine Learning',
        'Passionate Machine Learning enthusiast from Rwanda.',
        'https://github.com/ximenaturay95',
        'https://linkedin.com/in/ximena-turay-95',
        'active'
    ),
    (
        '3a32ac91-1fbf-4d01-a99d-3058f4c66b79',
        '6219e927-dcbf-48ff-8200-93e8afe73cf7',
        'RH-2025-0097',
        'Cohort-A 2025',
        'Cloud Computing',
        'Passionate Cloud Computing enthusiast from Uganda.',
        'https://github.com/yakubumansaray96',
        'https://linkedin.com/in/yakubu-mansaray-96',
        'active'
    ),
    (
        'f3f46107-4776-44f8-8fa8-18e557e2aad3',
        '7f61ada6-b03d-47fd-8d40-13efacdded15',
        'RH-2025-0098',
        'Cohort-C 2024',
        'Machine Learning',
        'Passionate Machine Learning enthusiast from Tanzania.',
        'https://github.com/zahrafofanah97',
        'https://linkedin.com/in/zahra-fofanah-97',
        'withdrawn'
    ),
    (
        'ad99bb3b-78b1-4a55-a868-add9f6a73b96',
        'd7e8f653-75c3-4cbb-9c94-959e6d20149d',
        'RH-2025-0099',
        'Cohort-A 2024',
        'Cybersecurity',
        'Passionate Cybersecurity enthusiast from Nigeria.',
        'https://github.com/akinkoker98',
        'https://linkedin.com/in/akin-koker-98',
        'active'
    ),
    (
        '5e987db2-b41d-47e9-be16-ff488a6d23bc',
        '7e1c200e-4701-43d7-bca4-9b5935775e11',
        'RH-2025-0100',
        'Cohort-A 2024',
        'Cybersecurity',
        'Passionate Cybersecurity enthusiast from Tanzania.',
        'https://github.com/bosejalloh99',
        'https://linkedin.com/in/bose-jalloh-99',
        'active'
    );
-- Judges
INSERT INTO judges (
        judge_id,
        user_id,
        expertise,
        organization,
        assigned_stages
    )
VALUES (
        'e622a24e-1cb3-4c1e-908b-fb78693edd5e',
        '0630ff65-8f55-4944-885d-39a244da6835',
        'Database Design',
        'Andela',
        ARRAY [1,2,3,4]
    ),
    (
        'f9b935b8-c183-4660-9924-3b4919d11ae2',
        'd5d991d5-7fcb-49d8-9c0f-0af28c971936',
        'System Architecture',
        'AWS',
        ARRAY [1,2,3,4]
    ),
    (
        '31955b5d-22e5-4230-8261-a816b5b7299a',
        '61dfca65-0f11-4981-92bd-34a2ae20890c',
        'Data Science',
        'Cowrywise',
        ARRAY [1,2,3,4]
    ),
    (
        '187e8296-9dde-4b7d-927b-621b37f70c99',
        '1c3654f9-1e50-4190-90d2-0a8bda10d933',
        'Security Engineering',
        'PiggyVest',
        ARRAY [1,2,3,4]
    ),
    (
        'e7202d34-6e80-4551-8ab3-b3690fb92b35',
        '48dcd427-cee2-4b38-a427-78850e4d7798',
        'Product Strategy',
        'Meta',
        ARRAY [1,2,3,4]
    );
-- Submissions (50+)
INSERT INTO submissions (
        submission_id,
        participant_id,
        stage_id,
        title,
        description,
        submission_url,
        github_repo,
        status
    )
VALUES (
        '0038d9b8-5d8d-4a5c-8009-d7a273bb49f3',
        'c1761e0e-08e3-42af-a4de-8119a4a88b77',
        1,
        'Microservices DB Layer - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-1',
        'https://github.com/participant0/rhdc-stage1',
        'accepted'
    ),
    (
        'f62204b4-618e-476e-a202-6ea5921d68df',
        '5886e3ec-e1cd-47cb-b883-10ac8fe075ea',
        1,
        'Real-time Dashboard - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-2',
        'https://github.com/participant1/rhdc-stage1',
        'accepted'
    ),
    (
        '4aa04e6d-cf2f-4280-9fc5-8fd0c04b1bd6',
        '9154727f-1e7a-46f9-88b5-1fcb263eb23d',
        1,
        'Master Data Pipeline - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-3',
        'https://github.com/participant2/rhdc-stage1',
        'under_review'
    ),
    (
        '37033317-330a-4882-b4cb-3e8b8a7da035',
        '64be9e71-68a3-43ff-8738-d8852ecf1d76',
        1,
        'Participant Tracker - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-4',
        'https://github.com/participant3/rhdc-stage1',
        'accepted'
    ),
    (
        'a3c75db4-8744-4a87-9b43-693a324e1992',
        '0b788b7e-b136-4568-b1d8-b9b7856d5a8b',
        1,
        'Stage Progress Monitor - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-5',
        'https://github.com/participant4/rhdc-stage1',
        'rejected'
    ),
    (
        '13484640-7674-416c-ab4a-46d9d594bea6',
        '1ba99f56-fcaa-4b7c-a40e-b01c7231a136',
        1,
        'Automated Scoring System - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-6',
        'https://github.com/participant5/rhdc-stage1',
        'accepted'
    ),
    (
        '6fd8ebce-b215-475e-86fd-cc1d21442fe6',
        'af8f1aaa-fe28-4e3d-a552-3424b14611f1',
        1,
        'Real-time Dashboard - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-7',
        'https://github.com/participant6/rhdc-stage1',
        'pending'
    ),
    (
        '95ae068c-7453-4337-ae78-ec80038c62ee',
        '34f3225a-61d8-4940-8e0f-1d6373792bcf',
        1,
        'Judge Portal Backend - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-8',
        'https://github.com/participant7/rhdc-stage1',
        'under_review'
    ),
    (
        '444656e0-bae2-47f6-a5ed-b0c9b4bd6e9c',
        '164012d6-4392-4b6f-99a7-94619ef46d9c',
        1,
        'Cloud-native DB Solution - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-9',
        'https://github.com/participant8/rhdc-stage1',
        'accepted'
    ),
    (
        '20d5f0bd-fe85-4eff-a51c-a96e200c1b10',
        'ddc5a9dc-b818-4c23-8a5d-d4214117e424',
        1,
        'Microservices DB Layer - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-10',
        'https://github.com/participant9/rhdc-stage1',
        'pending'
    ),
    (
        '863e76da-dcf6-4a56-b515-06a080883ff5',
        '0e972161-55c7-4128-a0a4-602edf3a1275',
        1,
        'Secure User Platform - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-11',
        'https://github.com/participant10/rhdc-stage1',
        'under_review'
    ),
    (
        '53161bf6-154c-4ccb-a3c3-34b2d2c83c0a',
        'e48cb07b-1740-4ba1-80fc-f1440d50df46',
        1,
        'Cloud-native DB Solution - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-12',
        'https://github.com/participant11/rhdc-stage1',
        'under_review'
    ),
    (
        '109241e4-5f92-4d57-b1fb-0b0b8cc1d223',
        '2ae45cef-32fd-4edb-a00f-0b90871a481e',
        1,
        'Smart Analytics Engine - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-13',
        'https://github.com/participant12/rhdc-stage1',
        'accepted'
    ),
    (
        'f8cf3fbb-5965-41af-add3-e4cbda363033',
        'bbd5378d-3b30-41c8-bf7b-aba8672d1f00',
        1,
        'Optimized Query Suite - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-14',
        'https://github.com/participant13/rhdc-stage1',
        'accepted'
    ),
    (
        '7bee0f40-5701-4ab4-a806-3582eaa50a54',
        '357e3216-f539-4522-ae4a-d2b9dd28effe',
        1,
        'Optimized Query Suite - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-15',
        'https://github.com/participant14/rhdc-stage1',
        'accepted'
    ),
    (
        '1eb859ff-003d-4c62-9f4e-443f37a6c534',
        'f1c78630-6369-4caf-8cf2-895fef3ea2d1',
        1,
        'Cloud-native DB Solution - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-16',
        'https://github.com/participant15/rhdc-stage1',
        'pending'
    ),
    (
        'e0fe6f34-e1a2-4bf7-939d-895860584b2b',
        'eac9acfa-a69f-4a46-8565-c1aed38df1ac',
        1,
        'Secure User Platform - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-17',
        'https://github.com/participant16/rhdc-stage1',
        'accepted'
    ),
    (
        '69864403-2e55-4156-9876-8bbf88ab9711',
        '2bfb8eab-1f3c-49f2-8066-9c53abbe3456',
        1,
        'Stage Progress Monitor - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-18',
        'https://github.com/participant17/rhdc-stage1',
        'pending'
    ),
    (
        'b49afefc-7b14-4093-93f6-36b736798016',
        '4361a4f8-aca2-419c-9024-b9fd74d33719',
        1,
        'Optimized Query Suite - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-19',
        'https://github.com/participant18/rhdc-stage1',
        'rejected'
    ),
    (
        '4af496b5-37a4-43c4-bbd5-53b6ca833b1b',
        'b0bbc237-6a5b-4c3a-9a8b-01c3188becae',
        1,
        'Cloud-native DB Solution - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-20',
        'https://github.com/participant19/rhdc-stage1',
        'accepted'
    ),
    (
        '22fb55b1-d7b6-42de-bec0-9eb2acbc176d',
        'd75ad7fd-8201-48a8-97a0-a8f075fb2516',
        1,
        'Participant Tracker - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-21',
        'https://github.com/participant20/rhdc-stage1',
        'accepted'
    ),
    (
        '7acc33b4-2339-4a39-9a60-583d6362f408',
        'b93a156f-62db-4f6f-b678-c2014d6e62c4',
        1,
        'Participant Tracker - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-22',
        'https://github.com/participant21/rhdc-stage1',
        'accepted'
    ),
    (
        '5975fa49-a749-4b16-a1d5-07010e5ce54f',
        '15418b23-41ef-4c9c-987c-0b0230f0e39b',
        1,
        'Report Generator - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-23',
        'https://github.com/participant22/rhdc-stage1',
        'accepted'
    ),
    (
        'f24bf6fe-d716-4018-9abc-b4c5627dafe6',
        '14dac916-a994-4e0d-a373-7f259f004a19',
        1,
        'Smart Analytics Engine - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-24',
        'https://github.com/participant23/rhdc-stage1',
        'pending'
    ),
    (
        'f3a4ff9a-5a43-4992-82b3-05bf65331aab',
        '292c3357-0b60-4408-a882-de3b379f5284',
        1,
        'Judge Portal Backend - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-25',
        'https://github.com/participant24/rhdc-stage1',
        'under_review'
    ),
    (
        '738bf506-7809-4eb4-b92c-e3f02760c958',
        '0db175a1-fe90-4362-b156-5215275f80ba',
        1,
        'Audit Trail System - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-26',
        'https://github.com/participant25/rhdc-stage1',
        'accepted'
    ),
    (
        'a0ae6219-9614-4d21-bc20-c1256e208bfd',
        '47ad5cbb-436e-4dcf-9543-ccdbebb901bc',
        1,
        'Operational DB for RHDC - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-27',
        'https://github.com/participant26/rhdc-stage1',
        'rejected'
    ),
    (
        'ff2db9f4-2f44-4e16-83e6-ff25f3378a46',
        '638b7911-45b8-4703-917c-c6f93a51aa95',
        1,
        'Secure User Platform - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-28',
        'https://github.com/participant27/rhdc-stage1',
        'accepted'
    ),
    (
        'b6a2d71a-c540-4104-a42a-8ed217a298f3',
        '0935c341-d912-4ecb-ab39-11569de69b49',
        1,
        'Operational DB for RHDC - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-29',
        'https://github.com/participant28/rhdc-stage1',
        'accepted'
    ),
    (
        '2433e435-765a-434f-8cc0-8c5419979a51',
        '73fa5879-d3d1-47c2-bec9-b1ab078be458',
        1,
        'Participant Tracker - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-30',
        'https://github.com/participant29/rhdc-stage1',
        'rejected'
    ),
    (
        'de7be670-464b-4149-880a-c06cd5e128ad',
        '2486c81d-dc21-4edb-85ad-6311a5ff6c0f',
        1,
        'Microservices DB Layer - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-31',
        'https://github.com/participant30/rhdc-stage1',
        'accepted'
    ),
    (
        '3ffd15c5-21ee-40ad-b48a-88fd0fce3d03',
        'b78fa810-c106-4b99-a2ea-e95b8418f567',
        1,
        'Operational DB for RHDC - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-32',
        'https://github.com/participant31/rhdc-stage1',
        'accepted'
    ),
    (
        '59bce137-18d4-4049-8e59-64733f1ba02d',
        '36d85c85-884b-44b8-9a14-72f93698be2a',
        1,
        'Secure User Platform - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-33',
        'https://github.com/participant32/rhdc-stage1',
        'pending'
    ),
    (
        '98ff2519-be81-4f7e-9f79-778748e4da88',
        '39d6181f-8bf9-482c-9887-46771d6e1511',
        1,
        'Real-time Dashboard - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-34',
        'https://github.com/participant33/rhdc-stage1',
        'pending'
    ),
    (
        'cfc24200-084c-4afc-82eb-aa2afa4bc154',
        'ce0f3662-b174-4bd3-983e-b705ed2054be',
        1,
        'Cloud-native DB Solution - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-35',
        'https://github.com/participant34/rhdc-stage1',
        'under_review'
    ),
    (
        '823cf361-5cf4-49d0-9495-7aeb6b680a18',
        '11c8cbc5-0708-4672-9fda-f61cac251957',
        1,
        'Optimized Query Suite - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-36',
        'https://github.com/participant35/rhdc-stage1',
        'accepted'
    ),
    (
        'b6f0e65f-0d51-43d5-a285-33dbce59e2ee',
        'dbdae313-ea62-4b06-ae0c-4b142c9ba767',
        1,
        'Stage Progress Monitor - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-37',
        'https://github.com/participant36/rhdc-stage1',
        'accepted'
    ),
    (
        'e7a19a28-3887-45ab-af8a-cfed76346ad6',
        'aa48e40e-93ba-4cab-bbd2-bc92cd09bb75',
        1,
        'Audit Trail System - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-38',
        'https://github.com/participant37/rhdc-stage1',
        'accepted'
    ),
    (
        'ded4dd61-f1cd-44ae-ba55-013d9b4f2355',
        '4c2ec7f4-538d-49b7-959a-c931fb1c7cc5',
        1,
        'Participant Tracker - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-39',
        'https://github.com/participant38/rhdc-stage1',
        'rejected'
    ),
    (
        '931e2aca-c1ac-4ecb-aedc-abebaef1f986',
        '25192bb5-2a58-4e09-a49e-748e858db2f0',
        1,
        'Operational DB for RHDC - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-40',
        'https://github.com/participant39/rhdc-stage1',
        'under_review'
    ),
    (
        '09961641-9f3d-49fc-a521-fe557d17b65e',
        'dbc5cb33-8535-4721-b368-39f25e5edd8c',
        1,
        'Participant Tracker - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-41',
        'https://github.com/participant40/rhdc-stage1',
        'accepted'
    ),
    (
        '17e8f431-297a-4880-bb82-1fd5cbaf5456',
        '7f191d8b-0d00-4d86-b2a9-0c1030f9ca01',
        1,
        'Audit Trail System - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-42',
        'https://github.com/participant41/rhdc-stage1',
        'rejected'
    ),
    (
        '66f42c24-8f6b-4b0a-8792-1ca4453e0d60',
        'b3feb566-570f-4262-a0b5-362d7f4e6185',
        1,
        'Event-driven DB Schema - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-43',
        'https://github.com/participant42/rhdc-stage1',
        'accepted'
    ),
    (
        '4a99030b-6b96-4c02-837c-57d5c7cd3932',
        '526006dc-21f0-4e52-8297-6f84df864b3e',
        1,
        'Real-time Dashboard - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-44',
        'https://github.com/participant43/rhdc-stage1',
        'accepted'
    ),
    (
        'c8bd098e-f793-4a43-9b6a-29b4b2652457',
        '0ecb5768-f71e-463e-add9-b83c53a1a39d',
        1,
        'Audit Trail System - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-45',
        'https://github.com/participant44/rhdc-stage1',
        'accepted'
    ),
    (
        '1529b22b-3fde-4d4a-9a26-a5c5971cd7ba',
        'a851537b-adda-4bca-8d7d-fb5ce55830f4',
        1,
        'Operational DB for RHDC - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-46',
        'https://github.com/participant45/rhdc-stage1',
        'accepted'
    ),
    (
        'f7a843e6-66c2-4fa2-a3aa-8d14fd2351c6',
        '6378bc7d-35b2-4553-8e50-fc6da07c92d9',
        1,
        'Stage Progress Monitor - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-47',
        'https://github.com/participant46/rhdc-stage1',
        'accepted'
    ),
    (
        '7a8af422-10e1-45a3-918f-b0af1d9403d0',
        '73c74017-a87d-4c17-8aaf-22a4eecb2e68',
        1,
        'Stage Progress Monitor - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-48',
        'https://github.com/participant47/rhdc-stage1',
        'accepted'
    ),
    (
        '60a584ee-ffe4-47d3-b768-e060c9f1f34e',
        'dbbb32bf-2a83-4c4b-a4bc-26abb41e8081',
        1,
        'Automated Scoring System - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-49',
        'https://github.com/participant48/rhdc-stage1',
        'accepted'
    ),
    (
        '3aca6518-3dad-4409-844d-ace220fc8aa8',
        'e0556836-0c63-44cb-b21b-1ec833302dd9',
        1,
        'Audit Trail System - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-50',
        'https://github.com/participant49/rhdc-stage1',
        'accepted'
    ),
    (
        '53bc931b-65f2-45f2-8c2d-87333a51ec9a',
        'd4f8a50f-3172-43e7-be9e-9f85d10ebf89',
        1,
        'Cloud-native DB Solution - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-51',
        'https://github.com/participant50/rhdc-stage1',
        'accepted'
    ),
    (
        'c227978c-a175-459e-9ea6-de5b2fa059ff',
        'e30f5418-534b-457a-b394-3d5bfb6e3606',
        1,
        'Secure User Platform - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-52',
        'https://github.com/participant51/rhdc-stage1',
        'accepted'
    ),
    (
        '46105ba8-056c-4117-882c-51fb78950c7a',
        '3ba6c79e-d0ca-416e-8a0f-35cd9f09ec41',
        1,
        'Smart Analytics Engine - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-53',
        'https://github.com/participant52/rhdc-stage1',
        'pending'
    ),
    (
        '0e15120c-efed-4a7a-98af-978ab1d0c813',
        '9e3f71c6-fb1a-46ef-a93c-e9d3e7893fe2',
        1,
        'Real-time Dashboard - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-54',
        'https://github.com/participant53/rhdc-stage1',
        'accepted'
    ),
    (
        'a4b767bd-4b8f-48fb-a5e2-cea2877ae012',
        'f8901ebe-7ee8-4550-a678-5c4d17329afa',
        1,
        'Audit Trail System - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-55',
        'https://github.com/participant54/rhdc-stage1',
        'rejected'
    ),
    (
        '0944a7a2-16f0-4f32-88e0-f709597d11cf',
        'bc3561c1-f4cf-4a6d-9997-bbbc68609a4a',
        1,
        'Real-time Dashboard - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-56',
        'https://github.com/participant55/rhdc-stage1',
        'pending'
    ),
    (
        '8bc32074-b2de-4eb4-bb07-0f3701ff4fec',
        '33748c44-af9d-4234-8f06-e6bebfbe92e0',
        1,
        'Report Generator - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-57',
        'https://github.com/participant56/rhdc-stage1',
        'pending'
    ),
    (
        '239d3586-68b1-4249-88ca-eb437a4bd3b0',
        '347a5e2e-3df4-49da-8382-724de979eb0b',
        1,
        'Microservices DB Layer - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-58',
        'https://github.com/participant57/rhdc-stage1',
        'accepted'
    ),
    (
        'bab72f2e-b3f1-4455-8333-0ad391b1d353',
        '09e37979-7dee-46c1-b768-d0e857e6493b',
        1,
        'Real-time Dashboard - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-59',
        'https://github.com/participant58/rhdc-stage1',
        'under_review'
    ),
    (
        'f2f43966-cfae-447d-b67f-bf0640c95b75',
        '8ead40f1-e0eb-4d4d-be08-c0072e83f50b',
        1,
        'Master Data Pipeline - Stage 1',
        'A comprehensive solution addressing stage 1 requirements using PostgreSQL and best practices.',
        'https://drive.google.com/file/rhdc-submission-60',
        'https://github.com/participant59/rhdc-stage1',
        'accepted'
    );
-- Evaluations (20+)
INSERT INTO evaluations (
        evaluation_id,
        submission_id,
        judge_id,
        score,
        technical_score,
        creativity_score,
        usability_score,
        presentation_score,
        feedback,
        is_final
    )
VALUES (
        '23d0de7f-56c3-451f-9a18-92102edefac8',
        '0038d9b8-5d8d-4a5c-8009-d7a273bb49f3',
        '187e8296-9dde-4b7d-927b-621b37f70c99',
        79.89,
        87.39,
        72.56,
        96.44,
        63.19,
        'Outstanding use of JSONB for flexible reporting.',
        FALSE
    ),
    (
        'b7e95afa-1a95-48c0-b575-bdbdfb34cbb3',
        'f62204b4-618e-476e-a202-6ea5921d68df',
        'e7202d34-6e80-4551-8ab3-b3690fb92b35',
        81.16,
        92.25,
        90.89,
        58.82,
        82.7,
        'Excellent schema design with strong normalization.',
        TRUE
    ),
    (
        '045fbacd-be00-4222-abe4-44f170fb9978',
        '4aa04e6d-cf2f-4280-9fc5-8fd0c04b1bd6',
        'e622a24e-1cb3-4c1e-908b-fb78693edd5e',
        62.84,
        64.01,
        59.5,
        64.64,
        63.21,
        'Outstanding use of JSONB for flexible reporting.',
        FALSE
    ),
    (
        '6e561770-a726-4d83-9cbe-0316b426c682',
        '37033317-330a-4882-b4cb-3e8b8a7da035',
        'e622a24e-1cb3-4c1e-908b-fb78693edd5e',
        64.77,
        76.23,
        64.92,
        62.8,
        55.14,
        'Good structure but could improve on security.',
        TRUE
    ),
    (
        'a03da4a9-ee08-4ef1-bc1a-41e96bf71234',
        'a3c75db4-8744-4a87-9b43-693a324e1992',
        'e7202d34-6e80-4551-8ab3-b3690fb92b35',
        79.73,
        56.23,
        72.92,
        93.55,
        96.23,
        'Well-documented and easy to navigate.',
        TRUE
    ),
    (
        '2dad72c0-1caa-4fdc-8939-3048dfd12287',
        '13484640-7674-416c-ab4a-46d9d594bea6',
        'e7202d34-6e80-4551-8ab3-b3690fb92b35',
        66.02,
        81.44,
        59.21,
        61.24,
        62.18,
        'Queries are efficient and cover all required areas.',
        TRUE
    ),
    (
        '6126cfa4-9709-4a21-9a41-f807d2aff353',
        '6fd8ebce-b215-475e-86fd-cc1d21442fe6',
        '31955b5d-22e5-4230-8261-a816b5b7299a',
        78.73,
        63.38,
        76.67,
        80.34,
        94.53,
        'RLS implementation is commendable.',
        TRUE
    ),
    (
        '41a5f2fc-bd82-492f-9247-eee797b04db7',
        '95ae068c-7453-4337-ae78-ec80038c62ee',
        '187e8296-9dde-4b7d-927b-621b37f70c99',
        85.09,
        78.46,
        88.19,
        89.74,
        83.97,
        'Solid foundation with room for optimization.',
        TRUE
    ),
    (
        'd58a074a-dfe8-48fb-a8b8-be8ce199324b',
        '444656e0-bae2-47f6-a5ed-b0c9b4bd6e9c',
        'f9b935b8-c183-4660-9924-3b4919d11ae2',
        63.03,
        75.75,
        63.68,
        57.24,
        55.46,
        'Impressive use of indexes and triggers.',
        FALSE
    ),
    (
        'da5efa78-9e90-4f12-82c7-902feb98360f',
        '20d5f0bd-fe85-4eff-a51c-a96e200c1b10',
        '31955b5d-22e5-4230-8261-a816b5b7299a',
        82.77,
        97.43,
        88.33,
        67.06,
        78.25,
        'Good structure but could improve on security.',
        FALSE
    ),
    (
        '579f3ce7-85e6-430b-8d28-878491db19d5',
        '863e76da-dcf6-4a56-b515-06a080883ff5',
        '187e8296-9dde-4b7d-927b-621b37f70c99',
        67.93,
        83.02,
        62.53,
        67.71,
        58.47,
        'Excellent schema design with strong normalization.',
        FALSE
    ),
    (
        '5417008d-d2c0-4740-b356-6333570349ab',
        '53161bf6-154c-4ccb-a3c3-34b2d2c83c0a',
        'f9b935b8-c183-4660-9924-3b4919d11ae2',
        75.39,
        81.23,
        58.13,
        69.97,
        92.22,
        'Queries are efficient and cover all required areas.',
        TRUE
    ),
    (
        '3c75dc67-2ab6-4225-8d23-3ba419b3ccee',
        '109241e4-5f92-4d57-b1fb-0b0b8cc1d223',
        'e7202d34-6e80-4551-8ab3-b3690fb92b35',
        79.51,
        91.07,
        67.11,
        73.83,
        86.04,
        'Queries are efficient and cover all required areas.',
        FALSE
    ),
    (
        '8a3f3df2-fa94-4507-af2b-b9ec9a4edfe5',
        'f8cf3fbb-5965-41af-add3-e4cbda363033',
        'e7202d34-6e80-4551-8ab3-b3690fb92b35',
        77.33,
        86.35,
        63.64,
        97.09,
        62.24,
        'Solid foundation with room for optimization.',
        TRUE
    ),
    (
        '0cb156e3-2ebf-446f-9af1-6e148758b946',
        '7bee0f40-5701-4ab4-a806-3582eaa50a54',
        'e7202d34-6e80-4551-8ab3-b3690fb92b35',
        83.07,
        96.4,
        92.55,
        67.64,
        75.69,
        'Good work but missing some constraints.',
        FALSE
    ),
    (
        '982039c1-e382-4095-ab11-186560434a35',
        '1eb859ff-003d-4c62-9f4e-443f37a6c534',
        '187e8296-9dde-4b7d-927b-621b37f70c99',
        79.31,
        58.06,
        94.45,
        87.75,
        77.0,
        'Impressive use of indexes and triggers.',
        FALSE
    ),
    (
        '69b8983e-6405-4fe9-80cb-81aee0e68c51',
        'e0fe6f34-e1a2-4bf7-939d-895860584b2b',
        '31955b5d-22e5-4230-8261-a816b5b7299a',
        79.16,
        87.37,
        76.08,
        75.03,
        78.16,
        'Well-documented and easy to navigate.',
        FALSE
    ),
    (
        'a50fdf2b-a092-43b4-9085-23b5817a1ac5',
        '69864403-2e55-4156-9876-8bbf88ab9711',
        'e622a24e-1cb3-4c1e-908b-fb78693edd5e',
        85.12,
        78.54,
        81.05,
        87.61,
        93.3,
        'Impressive use of indexes and triggers.',
        FALSE
    ),
    (
        '8adf98fa-7f0a-4eae-9a4d-a2163a6adce6',
        'b49afefc-7b14-4093-93f6-36b736798016',
        '31955b5d-22e5-4230-8261-a816b5b7299a',
        71.03,
        63.53,
        81.55,
        72.01,
        67.05,
        'RLS implementation is commendable.',
        FALSE
    ),
    (
        '9b99ded5-4696-4cc2-ae95-63656df9d3fb',
        '4af496b5-37a4-43c4-bbd5-53b6ca833b1b',
        'e7202d34-6e80-4551-8ab3-b3690fb92b35',
        69.08,
        73.15,
        90.69,
        57.03,
        55.44,
        'Solid foundation with room for optimization.',
        FALSE
    ),
    (
        'ada34c36-efa7-451c-9ace-a95330ae9899',
        '22fb55b1-d7b6-42de-bec0-9eb2acbc176d',
        '187e8296-9dde-4b7d-927b-621b37f70c99',
        84.44,
        85.76,
        76.96,
        78.56,
        96.47,
        'Good work but missing some constraints.',
        FALSE
    ),
    (
        'e9b6e3ef-9fc2-48b6-b609-67def383d377',
        '7acc33b4-2339-4a39-9a60-583d6362f408',
        '31955b5d-22e5-4230-8261-a816b5b7299a',
        77.49,
        78.9,
        63.2,
        73.75,
        94.1,
        'Queries are efficient and cover all required areas.',
        TRUE
    ),
    (
        'eca84395-5b6c-4784-9d84-902a744d246d',
        '5975fa49-a749-4b16-a1d5-07010e5ce54f',
        '187e8296-9dde-4b7d-927b-621b37f70c99',
        73.21,
        68.63,
        60.02,
        90.3,
        73.88,
        'Seed data is realistic and well-structured.',
        TRUE
    ),
    (
        'd36b2df0-c66e-4c0c-b09d-c8dcf5a309f8',
        'f24bf6fe-d716-4018-9abc-b4c5627dafe6',
        'f9b935b8-c183-4660-9924-3b4919d11ae2',
        71.7,
        65.04,
        64.58,
        83.34,
        73.85,
        'Outstanding use of JSONB for flexible reporting.',
        FALSE
    ),
    (
        'dd0adee4-dc59-4b4f-b016-ae0e095370e1',
        'f3a4ff9a-5a43-4992-82b3-05bf65331aab',
        '31955b5d-22e5-4230-8261-a816b5b7299a',
        73.68,
        56.98,
        71.6,
        81.82,
        84.32,
        'Well-documented and easy to navigate.',
        FALSE
    );
-- Stage Progress
INSERT INTO stage_progress (
        participant_id,
        stage_id,
        qualified,
        average_score,
        rank_in_stage,
        advanced_to_next
    )
VALUES (
        'c1761e0e-08e3-42af-a4de-8119a4a88b77',
        1,
        TRUE,
        80.64,
        1,
        TRUE
    ),
    (
        '5886e3ec-e1cd-47cb-b883-10ac8fe075ea',
        1,
        TRUE,
        65.29,
        2,
        FALSE
    ),
    (
        '9154727f-1e7a-46f9-88b5-1fcb263eb23d',
        1,
        TRUE,
        70.66,
        3,
        TRUE
    ),
    (
        '64be9e71-68a3-43ff-8738-d8852ecf1d76',
        1,
        TRUE,
        87.28,
        4,
        TRUE
    ),
    (
        '0b788b7e-b136-4568-b1d8-b9b7856d5a8b',
        1,
        FALSE,
        55.54,
        NULL,
        FALSE
    ),
    (
        '1ba99f56-fcaa-4b7c-a40e-b01c7231a136',
        1,
        TRUE,
        82.89,
        6,
        FALSE
    ),
    (
        'af8f1aaa-fe28-4e3d-a552-3424b14611f1',
        1,
        FALSE,
        44.24,
        NULL,
        FALSE
    ),
    (
        '34f3225a-61d8-4940-8e0f-1d6373792bcf',
        1,
        FALSE,
        57.34,
        NULL,
        FALSE
    ),
    (
        '164012d6-4392-4b6f-99a7-94619ef46d9c',
        1,
        FALSE,
        56.98,
        NULL,
        FALSE
    ),
    (
        'ddc5a9dc-b818-4c23-8a5d-d4214117e424',
        1,
        FALSE,
        59.68,
        NULL,
        FALSE
    ),
    (
        '0e972161-55c7-4128-a0a4-602edf3a1275',
        1,
        TRUE,
        66.84,
        11,
        FALSE
    ),
    (
        'e48cb07b-1740-4ba1-80fc-f1440d50df46',
        1,
        TRUE,
        71.68,
        12,
        TRUE
    ),
    (
        '2ae45cef-32fd-4edb-a00f-0b90871a481e',
        1,
        FALSE,
        53.58,
        NULL,
        FALSE
    ),
    (
        'bbd5378d-3b30-41c8-bf7b-aba8672d1f00',
        1,
        FALSE,
        59.05,
        NULL,
        FALSE
    ),
    (
        '357e3216-f539-4522-ae4a-d2b9dd28effe',
        1,
        FALSE,
        40.8,
        NULL,
        FALSE
    ),
    (
        'f1c78630-6369-4caf-8cf2-895fef3ea2d1',
        1,
        TRUE,
        97.09,
        16,
        FALSE
    ),
    (
        'eac9acfa-a69f-4a46-8565-c1aed38df1ac',
        1,
        TRUE,
        78.25,
        17,
        TRUE
    ),
    (
        '2bfb8eab-1f3c-49f2-8066-9c53abbe3456',
        1,
        TRUE,
        75.22,
        18,
        TRUE
    ),
    (
        '4361a4f8-aca2-419c-9024-b9fd74d33719',
        1,
        TRUE,
        78.76,
        19,
        FALSE
    ),
    (
        'b0bbc237-6a5b-4c3a-9a8b-01c3188becae',
        1,
        TRUE,
        74.2,
        20,
        TRUE
    ),
    (
        'd75ad7fd-8201-48a8-97a0-a8f075fb2516',
        1,
        TRUE,
        74.54,
        21,
        TRUE
    ),
    (
        'b93a156f-62db-4f6f-b678-c2014d6e62c4',
        1,
        FALSE,
        48.15,
        NULL,
        FALSE
    ),
    (
        '15418b23-41ef-4c9c-987c-0b0230f0e39b',
        1,
        FALSE,
        50.5,
        NULL,
        FALSE
    ),
    (
        '14dac916-a994-4e0d-a373-7f259f004a19',
        1,
        TRUE,
        63.38,
        24,
        FALSE
    ),
    (
        '292c3357-0b60-4408-a882-de3b379f5284',
        1,
        FALSE,
        58.24,
        NULL,
        FALSE
    ),
    (
        '0db175a1-fe90-4362-b156-5215275f80ba',
        1,
        FALSE,
        58.0,
        NULL,
        FALSE
    ),
    (
        '47ad5cbb-436e-4dcf-9543-ccdbebb901bc',
        1,
        TRUE,
        66.65,
        27,
        FALSE
    ),
    (
        '638b7911-45b8-4703-917c-c6f93a51aa95',
        1,
        TRUE,
        94.26,
        28,
        FALSE
    ),
    (
        '0935c341-d912-4ecb-ab39-11569de69b49',
        1,
        TRUE,
        71.0,
        29,
        TRUE
    ),
    (
        '73fa5879-d3d1-47c2-bec9-b1ab078be458',
        1,
        FALSE,
        59.25,
        NULL,
        FALSE
    ),
    (
        '2486c81d-dc21-4edb-85ad-6311a5ff6c0f',
        1,
        TRUE,
        71.08,
        31,
        TRUE
    ),
    (
        'b78fa810-c106-4b99-a2ea-e95b8418f567',
        1,
        TRUE,
        94.67,
        32,
        TRUE
    ),
    (
        '36d85c85-884b-44b8-9a14-72f93698be2a',
        1,
        FALSE,
        50.42,
        NULL,
        FALSE
    ),
    (
        '39d6181f-8bf9-482c-9887-46771d6e1511',
        1,
        FALSE,
        40.4,
        NULL,
        FALSE
    ),
    (
        'ce0f3662-b174-4bd3-983e-b705ed2054be',
        1,
        TRUE,
        77.68,
        35,
        TRUE
    ),
    (
        '11c8cbc5-0708-4672-9fda-f61cac251957',
        1,
        TRUE,
        76.36,
        36,
        FALSE
    ),
    (
        'dbdae313-ea62-4b06-ae0c-4b142c9ba767',
        1,
        TRUE,
        83.65,
        37,
        FALSE
    ),
    (
        'aa48e40e-93ba-4cab-bbd2-bc92cd09bb75',
        1,
        FALSE,
        50.27,
        NULL,
        FALSE
    ),
    (
        '4c2ec7f4-538d-49b7-959a-c931fb1c7cc5',
        1,
        TRUE,
        69.84,
        39,
        TRUE
    ),
    (
        '25192bb5-2a58-4e09-a49e-748e858db2f0',
        1,
        TRUE,
        88.3,
        40,
        TRUE
    ),
    (
        'dbc5cb33-8535-4721-b368-39f25e5edd8c',
        1,
        FALSE,
        50.52,
        NULL,
        FALSE
    ),
    (
        '7f191d8b-0d00-4d86-b2a9-0c1030f9ca01',
        1,
        TRUE,
        88.69,
        42,
        TRUE
    ),
    (
        'b3feb566-570f-4262-a0b5-362d7f4e6185',
        1,
        FALSE,
        51.72,
        NULL,
        FALSE
    ),
    (
        '526006dc-21f0-4e52-8297-6f84df864b3e',
        1,
        FALSE,
        53.85,
        NULL,
        FALSE
    ),
    (
        '0ecb5768-f71e-463e-add9-b83c53a1a39d',
        1,
        TRUE,
        79.0,
        45,
        TRUE
    ),
    (
        'a851537b-adda-4bca-8d7d-fb5ce55830f4',
        1,
        FALSE,
        54.02,
        NULL,
        FALSE
    ),
    (
        '6378bc7d-35b2-4553-8e50-fc6da07c92d9',
        1,
        TRUE,
        78.43,
        47,
        TRUE
    ),
    (
        '73c74017-a87d-4c17-8aaf-22a4eecb2e68',
        1,
        TRUE,
        69.61,
        48,
        TRUE
    ),
    (
        'dbbb32bf-2a83-4c4b-a4bc-26abb41e8081',
        1,
        FALSE,
        46.93,
        NULL,
        FALSE
    ),
    (
        'e0556836-0c63-44cb-b21b-1ec833302dd9',
        1,
        TRUE,
        78.28,
        50,
        TRUE
    ),
    (
        'd4f8a50f-3172-43e7-be9e-9f85d10ebf89',
        1,
        TRUE,
        84.46,
        51,
        TRUE
    ),
    (
        'e30f5418-534b-457a-b394-3d5bfb6e3606',
        1,
        TRUE,
        91.79,
        52,
        TRUE
    ),
    (
        '3ba6c79e-d0ca-416e-8a0f-35cd9f09ec41',
        1,
        TRUE,
        95.34,
        53,
        TRUE
    ),
    (
        '9e3f71c6-fb1a-46ef-a93c-e9d3e7893fe2',
        1,
        FALSE,
        42.79,
        NULL,
        FALSE
    ),
    (
        'f8901ebe-7ee8-4550-a678-5c4d17329afa',
        1,
        TRUE,
        87.13,
        55,
        TRUE
    ),
    (
        'bc3561c1-f4cf-4a6d-9997-bbbc68609a4a',
        1,
        TRUE,
        78.09,
        56,
        FALSE
    ),
    (
        '33748c44-af9d-4234-8f06-e6bebfbe92e0',
        1,
        FALSE,
        43.88,
        NULL,
        FALSE
    ),
    (
        '347a5e2e-3df4-49da-8382-724de979eb0b',
        1,
        TRUE,
        93.73,
        58,
        TRUE
    ),
    (
        '09e37979-7dee-46c1-b768-d0e857e6493b',
        1,
        TRUE,
        72.86,
        59,
        TRUE
    ),
    (
        '8ead40f1-e0eb-4d4d-be08-c0072e83f50b',
        1,
        TRUE,
        86.93,
        60,
        FALSE
    ),
    (
        'b00e9d2e-f775-44d6-91b8-17427f2e7bf1',
        1,
        TRUE,
        62.2,
        61,
        TRUE
    ),
    (
        'b8ea32ea-2394-43f2-87b2-5e9c2c9fd084',
        1,
        TRUE,
        93.27,
        62,
        TRUE
    ),
    (
        'ff725831-c9b4-4bd5-824f-a53e2e803629',
        1,
        FALSE,
        44.91,
        NULL,
        FALSE
    ),
    (
        'cb585814-361e-409a-b088-9c8d5e085a2f',
        1,
        FALSE,
        49.27,
        NULL,
        FALSE
    ),
    (
        '090bad72-4b3e-4b69-8adc-6833ec5bb5d7',
        1,
        TRUE,
        97.83,
        65,
        TRUE
    ),
    (
        'c447a958-25b1-49d8-a85e-717edfc7aff4',
        1,
        TRUE,
        91.49,
        66,
        FALSE
    ),
    (
        '9e5bac0b-d8cd-4453-995f-fdcdd13f4bf8',
        1,
        FALSE,
        50.9,
        NULL,
        FALSE
    ),
    (
        '5a34f2ac-36fa-4795-a3c9-3b082c29c4f0',
        1,
        TRUE,
        82.5,
        68,
        TRUE
    ),
    (
        '35da41d1-2cb9-44e7-8157-48f836574dbf',
        1,
        TRUE,
        94.65,
        69,
        FALSE
    ),
    (
        'b37b7dac-3314-4e73-bd21-81b7861e092e',
        1,
        TRUE,
        79.33,
        70,
        TRUE
    ),
    (
        '6e47d756-44d9-4cc0-901a-cfbfd667a594',
        1,
        TRUE,
        90.65,
        71,
        TRUE
    ),
    (
        'b3b4ae38-4d0c-4148-ac8e-e746e5b5045e',
        1,
        TRUE,
        66.2,
        72,
        FALSE
    ),
    (
        '509d5e13-b7e7-4ff8-9197-a32b7227db4f',
        1,
        FALSE,
        51.59,
        NULL,
        FALSE
    ),
    (
        '018dde79-0039-4c85-8da6-7594e06cdac1',
        1,
        FALSE,
        43.44,
        NULL,
        FALSE
    ),
    (
        '8a0c0813-4bd0-4f72-88ee-93f8300ccb3d',
        1,
        TRUE,
        78.74,
        75,
        TRUE
    ),
    (
        '8e7e9479-b82c-4cbf-a741-b21e3c70a799',
        1,
        TRUE,
        75.25,
        76,
        FALSE
    ),
    (
        'f3bbd869-0f17-4fe7-badc-bc6d46372762',
        1,
        FALSE,
        44.73,
        NULL,
        FALSE
    ),
    (
        '6d26101c-bbf0-4deb-b841-f8cc9c99a97e',
        1,
        FALSE,
        55.79,
        NULL,
        FALSE
    ),
    (
        '2fd90c93-5557-4b21-86fd-066e99ac84e9',
        1,
        FALSE,
        47.45,
        NULL,
        FALSE
    ),
    (
        '75f2f517-6d1b-46f6-8c68-0e1a4fd21bd5',
        1,
        TRUE,
        62.41,
        80,
        FALSE
    );
-- Reports
INSERT INTO reports (
        report_name,
        report_type,
        stage_id,
        generated_by,
        summary
    )
VALUES (
        'Stage 1 Summary Report',
        'stage_summary',
        1,
        'a6f3d9dd-d79d-42f1-949d-28a67e1f4451',
        'Comprehensive analysis of Stage 1 submissions and scores.'
    ),
    (
        'Participant Registration Report',
        'registration',
        NULL,
        'a6f3d9dd-d79d-42f1-949d-28a67e1f4451',
        'Overview of all registered participants by cohort and track.'
    ),
    (
        'Judge Performance Report',
        'judge_analytics',
        1,
        'a6f3d9dd-d79d-42f1-949d-28a67e1f4451',
        'Analysis of judge scoring patterns and evaluation timelines.'
    ),
    (
        'Top Performers Report',
        'leaderboard',
        1,
        'a6f3d9dd-d79d-42f1-949d-28a67e1f4451',
        'Top 20 participants ranked by average score in Stage 1.'
    ),
    (
        'Submission Status Report',
        'submission_tracking',
        2,
        'a6f3d9dd-d79d-42f1-949d-28a67e1f4451',
        'Current status of all Stage 2 submissions.'
    );
-- Notifications (sample)
INSERT INTO notifications (
        user_id,
        title,
        message,
        notification_type,
        is_read
    )
VALUES (
        'dd01c387-8735-4b2c-9127-81e9040aacf3',
        'Score Published',
        'Your Stage 1 evaluation score is now available. Check your dashboard.',
        'evaluation',
        FALSE
    ),
    (
        '82afb6e0-66a6-4538-9854-9733120bac78',
        'Submission Received',
        'Your Stage 1 submission has been received and is under review.',
        'submission',
        FALSE
    ),
    (
        '7acaad49-60e0-448b-a44e-ef627e335937',
        'Score Published',
        'Your Stage 1 evaluation score is now available. Check your dashboard.',
        'evaluation',
        FALSE
    ),
    (
        '26d569ef-3e5a-479c-b3e9-f35bcae6cd16',
        'Score Published',
        'Your Stage 1 evaluation score is now available. Check your dashboard.',
        'evaluation',
        TRUE
    ),
    (
        'f7883316-6946-4b7b-8ce5-5fdf73bac111',
        'Reminder: Submission Deadline',
        'Stage 1 submission deadline is in 24 hours. Don''t miss it!',
        'reminder',
        TRUE
    ),
    (
        '48f00946-c8eb-4eb3-8e5f-29fe6240e00c',
        'Stage 2 Open',
        'Stage 2 of the RHDC is now open. Submit your work before the deadline.',
        'stage',
        TRUE
    ),
    (
        '9f837c13-240b-49cc-8860-9aa534129e7b',
        'Welcome to RHDC',
        'Welcome! You have successfully registered for the Remote Hustle Database Challenge.',
        'general',
        TRUE
    ),
    (
        'bf92a237-1443-48f1-87c2-0cf373cbfd90',
        'Stage 2 Open',
        'Stage 2 of the RHDC is now open. Submit your work before the deadline.',
        'stage',
        FALSE
    ),
    (
        '9d42424c-9bb3-4e38-b456-3da0e368bbb5',
        'Score Published',
        'Your Stage 1 evaluation score is now available. Check your dashboard.',
        'evaluation',
        TRUE
    ),
    (
        '73918d62-4991-4691-87d4-9a36836c4f73',
        'Submission Received',
        'Your Stage 1 submission has been received and is under review.',
        'submission',
        TRUE
    ),
    (
        '41e6e636-b312-4037-9a3b-5a61b1c1819c',
        'Score Published',
        'Your Stage 1 evaluation score is now available. Check your dashboard.',
        'evaluation',
        TRUE
    ),
    (
        '2fcf3a74-1db3-4685-bc8f-918bdc4d331a',
        'Welcome to RHDC',
        'Welcome! You have successfully registered for the Remote Hustle Database Challenge.',
        'general',
        FALSE
    ),
    (
        '38be788e-9c62-4c19-9067-05bbcfd00967',
        'Submission Received',
        'Your Stage 1 submission has been received and is under review.',
        'submission',
        TRUE
    ),
    (
        '22ca8512-1cc5-490c-9c2b-fd888eb0d8c4',
        'Stage 2 Open',
        'Stage 2 of the RHDC is now open. Submit your work before the deadline.',
        'stage',
        TRUE
    ),
    (
        'a8be2b7d-4edb-4f35-bd62-ea8d07ce0268',
        'Stage 2 Open',
        'Stage 2 of the RHDC is now open. Submit your work before the deadline.',
        'stage',
        FALSE
    ),
    (
        '388cbdd6-72de-4c94-b037-293add2159c1',
        'Score Published',
        'Your Stage 1 evaluation score is now available. Check your dashboard.',
        'evaluation',
        FALSE
    ),
    (
        '75989c5e-7640-4910-a694-41535dcd83a2',
        'Stage 2 Open',
        'Stage 2 of the RHDC is now open. Submit your work before the deadline.',
        'stage',
        TRUE
    ),
    (
        '82ee1f4c-a35f-43a9-8418-cb44fa6687e6',
        'Submission Received',
        'Your Stage 1 submission has been received and is under review.',
        'submission',
        TRUE
    ),
    (
        'c4d5ada4-e15d-46f0-ac05-6ce466d0a1dd',
        'Welcome to RHDC',
        'Welcome! You have successfully registered for the Remote Hustle Database Challenge.',
        'general',
        TRUE
    ),
    (
        '016c6aa7-057c-4f52-964e-1357d2dcec6a',
        'Reminder: Submission Deadline',
        'Stage 1 submission deadline is in 24 hours. Don''t miss it!',
        'reminder',
        TRUE
    );