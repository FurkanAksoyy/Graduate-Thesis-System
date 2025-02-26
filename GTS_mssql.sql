

CREATE TABLE Language (
    language_id INT IDENTITY(1,1) PRIMARY KEY, 
    language_name NVARCHAR(100) NOT NULL
);
INSERT INTO Language (language_name) 
VALUES 
('Turkish'),
('English'),
('Chinese'),
('Spanish'),
('Hindi'),
('Arabic'),
('Portuguese'),
('Bengali'),
('Russian'),
('Japanese'),
('Punjabi'),
('German'),
('French'),
('Korean'),
('Italian'),
('Urdu'),
('Persian'),
('Vietnamese'),
('Swahili'),
('Thai');




CREATE TABLE University (
    university_id INT IDENTITY(1,1) PRIMARY KEY,
    university_name NVARCHAR(200) NOT NULL
);
INSERT INTO University (university_name) 
VALUES 
('Maltepe University'),
('Boğaziçi University'),
('Middle East Technical University'),
('İstanbul Technical University'),
('Hacettepe University'),
('Koç University'),
('Sabancı University'),
('Ankara University'),
('Bilkent University'),
('Ege University'),
('Gazi University'),
('Yıldız Technical University'),
('İstanbul University'),
('Marmara University'),
('Dokuz Eylül University'),
('Çukurova University'),
('Karadeniz Technical University'),
('Erciyes University'),
('Akdeniz University'),
('Atatürk University');




CREATE TABLE Institute (
    institute_id INT IDENTITY(1,1) PRIMARY KEY,
    institute_name NVARCHAR(200) NOT NULL,
    university_id INT NOT NULL,
    FOREIGN KEY (university_id) REFERENCES University(university_id)
);
INSERT INTO Institute (institute_name, university_id) 
VALUES 

('Faculty of Medicine', 1),
('Engineering and Natural Sciences', 1),
('Faculty of Arts and Sciences', 1),
('Faculty of Business Administration', 1),
('Faculty of Economics and Administrative Sciences', 1),
('Faculty of Law', 1),
('Faculty of Social Sciences', 1),
('Faculty of Education', 1),
('Faculty of Architecture and Design', 1),
('Faculty of Communication', 1),
('Faculty of Human and Social Sciences', 1),


('Engineering and Natural Sciences', 2),
('Faculty of Arts and Sciences', 2),
('Faculty of Business Administration', 2),
('Faculty of Economics and Administrative Sciences', 2),
('Faculty of Law', 2),
('Faculty of Social Sciences', 2),
('Faculty of Education', 2),
('Faculty of Architecture and Design', 2),


('Engineering and Natural Sciences', 3),
('Faculty of Arts and Sciences', 3),
('Faculty of Business Administration', 3),
('Faculty of Economics and Administrative Sciences', 3),
('Faculty of Law', 3),
('Faculty of Social Sciences', 3),
('Faculty of Education', 3),
('Faculty of Architecture and Design', 3),
('Faculty of Communication', 3),
('Faculty of Human and Social Sciences', 3),



('Engineering and Natural Sciences', 4),
('Faculty of Arts and Sciences', 4),
('Faculty of Business Administration', 4),
('Faculty of Economics and Administrative Sciences', 4),
('Faculty of Law', 4),
('Faculty of Social Sciences', 4),
('Faculty of Education', 4),
('Faculty of Architecture and Design', 4),
('Faculty of Communication', 4),
('Faculty of Human and Social Sciences', 4),


('Faculty of Medicine', 5),
('Faculty of Dentistry', 5),
('Engineering and Natural Sciences', 5),
('Faculty of Arts and Sciences', 5),
('Faculty of Business Administration', 5),
('Faculty of Economics and Administrative Sciences', 5),
('Faculty of Law', 5),
('Faculty of Social Sciences', 5),
('Faculty of Education', 5),
('Faculty of Architecture and Design', 5),
('Faculty of Communication', 5),
('Faculty of Human and Social Sciences', 5),


('Faculty of Medicine', 6),
('Faculty of Dentistry', 6),
('Engineering and Natural Sciences', 6),
('Faculty of Arts and Sciences', 6),
('Faculty of Business Administration', 6),
('Faculty of Economics and Administrative Sciences', 6),
('Faculty of Law', 6),
('Faculty of Social Sciences', 6),
('Faculty of Education', 6),
('Faculty of Architecture and Design', 6),
('Faculty of Communication', 6),
('Faculty of Human and Social Sciences', 6),


('Faculty of Medicine', 7),
('Faculty of Dentistry', 7),
('Engineering and Natural Sciences', 7),
('Faculty of Arts and Sciences', 7),
('Faculty of Business Administration', 7),
('Faculty of Economics and Administrative Sciences', 7),
('Faculty of Law', 7),
('Faculty of Social Sciences', 7),
('Faculty of Education', 7),
('Faculty of Architecture and Design', 7),
('Faculty of Communication', 7),
('Faculty of Human and Social Sciences', 7),


('Faculty of Medicine', 8),
('Faculty of Dentistry', 8),
('Engineering and Natural Sciences', 8),
('Faculty of Arts and Sciences', 8),
('Faculty of Business Administration', 8),
('Faculty of Economics and Administrative Sciences', 8),
('Faculty of Law', 8),
('Faculty of Social Sciences', 8),
('Faculty of Education', 8),
('Faculty of Architecture and Design', 8),
('Faculty of Communication', 8),
('Faculty of Human and Social Sciences', 8),


('Faculty of Medicine', 9),
('Faculty of Dentistry', 9),
('Engineering and Natural Sciences', 9),
('Faculty of Arts and Sciences', 9),
('Faculty of Business Administration', 9),
('Faculty of Economics and Administrative Sciences', 9),
('Faculty of Law', 9),
('Faculty of Social Sciences', 9),
('Faculty of Education', 9),
('Faculty of Architecture and Design', 9),
('Faculty of Communication', 9),
('Faculty of Human and Social Sciences', 9),


('Faculty of Medicine', 10),
('Faculty of Dentistry', 10),
('Engineering and Natural Sciences', 10),
('Faculty of Arts and Sciences', 10),
('Faculty of Business Administration', 10),
('Faculty of Economics and Administrative Sciences', 10),
('Faculty of Law', 10),
('Faculty of Social Sciences', 10),
('Faculty of Education', 10),
('Faculty of Architecture and Design', 10),
('Faculty of Communication', 10),
('Faculty of Human and Social Sciences', 10),


('Faculty of Medicine', 11),
('Faculty of Dentistry', 11),
('Engineering and Natural Sciences', 11),
('Faculty of Arts and Sciences', 11),
('Faculty of Business Administration', 11),
('Faculty of Economics and Administrative Sciences', 11),
('Faculty of Law', 11),
('Faculty of Social Sciences', 11),
('Faculty of Education', 11),
('Faculty of Architecture and Design', 11),
('Faculty of Communication', 11),
('Faculty of Human and Social Sciences', 11),



('Engineering and Natural Sciences', 12),
('Faculty of Arts and Sciences', 12),
('Faculty of Business Administration', 12),
('Faculty of Economics and Administrative Sciences', 12),
('Faculty of Law', 12),
('Faculty of Social Sciences', 12),
('Faculty of Education', 12),
('Faculty of Architecture and Design', 12),
('Faculty of Communication', 12),
('Faculty of Human and Social Sciences', 12),


('Faculty of Medicine', 13),
('Faculty of Dentistry', 13),
('Engineering and Natural Sciences', 13),
('Faculty of Arts and Sciences', 13),
('Faculty of Business Administration', 13),
('Faculty of Economics and Administrative Sciences', 13),
('Faculty of Law', 13),
('Faculty of Social Sciences', 13),
('Faculty of Education', 13),
('Faculty of Architecture and Design', 13),
('Faculty of Communication', 13),
('Faculty of Human and Social Sciences', 13),


('Faculty of Medicine', 14),
('Faculty of Dentistry', 14),
('Engineering and Natural Sciences', 14),
('Faculty of Arts and Sciences', 14),
('Faculty of Business Administration', 14),
('Faculty of Economics and Administrative Sciences', 14),
('Faculty of Law', 14),
('Faculty of Social Sciences', 14),
('Faculty of Education', 14),
('Faculty of Architecture and Design', 14),
('Faculty of Communication', 14),
('Faculty of Human and Social Sciences', 14),


('Faculty of Medicine', 15),
('Faculty of Dentistry', 15),
('Engineering and Natural Sciences', 15),
('Faculty of Arts and Sciences', 15),
('Faculty of Business Administration', 15),
('Faculty of Economics and Administrative Sciences', 15),
('Faculty of Law', 15),
('Faculty of Social Sciences', 15),
('Faculty of Education', 15),
('Faculty of Architecture and Design', 15),
('Faculty of Communication', 15),
('Faculty of Human and Social Sciences', 15),


('Faculty of Medicine', 16),
('Faculty of Dentistry', 16),
('Engineering and Natural Sciences', 16),
('Faculty of Arts and Sciences', 16),
('Faculty of Business Administration', 16),
('Faculty of Economics and Administrative Sciences', 16),
('Faculty of Law', 16),
('Faculty of Social Sciences', 16),
('Faculty of Education', 16),
('Faculty of Architecture and Design', 16),
('Faculty of Communication', 16),
('Faculty of Human and Social Sciences', 16),


('Faculty of Medicine', 17),
('Faculty of Dentistry', 17),
('Engineering and Natural Sciences', 17),
('Faculty of Arts and Sciences', 17),
('Faculty of Business Administration', 17),
('Faculty of Economics and Administrative Sciences', 17),
('Faculty of Law', 17),
('Faculty of Social Sciences', 17),
('Faculty of Education', 17),
('Faculty of Architecture and Design', 17),
('Faculty of Communication', 17),
('Faculty of Human and Social Sciences', 17),


('Faculty of Medicine', 18),
('Faculty of Dentistry', 18),
('Engineering and Natural Sciences', 18),
('Faculty of Arts and Sciences', 18),
('Faculty of Business Administration', 18),
('Faculty of Economics and Administrative Sciences', 18),
('Faculty of Law', 18),
('Faculty of Social Sciences', 18),
('Faculty of Education', 18),
('Faculty of Architecture and Design', 18),
('Faculty of Communication', 18),
('Faculty of Human and Social Sciences', 18),


('Faculty of Medicine', 19),
('Faculty of Dentistry', 19),
('Engineering and Natural Sciences', 19),
('Faculty of Arts and Sciences', 19),
('Faculty of Business Administration', 19),
('Faculty of Economics and Administrative Sciences', 19),
('Faculty of Law', 19),
('Faculty of Social Sciences', 19),
('Faculty of Education', 19),
('Faculty of Architecture and Design', 19),
('Faculty of Communication', 19),
('Faculty of Human and Social Sciences', 19),


('Faculty of Medicine', 20),
('Faculty of Dentistry', 20),
('Engineering and Natural Sciences', 20),
('Faculty of Arts and Sciences', 20),
('Faculty of Business Administration', 20),
('Faculty of Economics and Administrative Sciences', 20),
('Faculty of Law', 20),
('Faculty of Social Sciences', 20),
('Faculty of Education', 20),
('Faculty of Architecture and Design', 20),
('Faculty of Communication', 20),
('Faculty of Human and Social Sciences', 20);
 


CREATE TABLE Type (
    type_id INT IDENTITY(1,1) PRIMARY KEY,
    type_name NVARCHAR(100) NOT NULL
);
INSERT INTO Type (type_name)
VALUES
('PhD'),
('Master''s Degree'),
('Bachelor''s Degree'),
('Associate Degree'),
('Post-Doctoral'),
('Master of Science (MS)'),
('Master of Arts (MA)'),
('Research'),
('Double Degree'),
('Professional Degree');


CREATE TABLE Author (
    author_id INT IDENTITY(1,1) PRIMARY KEY,
    author_name NVARCHAR(200) NOT NULL
);
INSERT INTO Author (author_name)
VALUES
('Can Öz'),
('Furkan Soyak'),
('Emre Sıra'),
('Arda Şimşir'),
('Ozan Fırıncı'),
('Kadirhan Sinekci'),
('Tunahan Demir'),
('Pelinsu Zorlu'),
('Aydın Gündoğdu'),
('Cemresu Altın'),
('Ferhat Selim'),
('Sedef Nur Ege'),
('Emirhan Şahin'),
('Güven Ertaş'),
('Sıla Baran'),
('Narin Çolak'),
('Tan Yalçın'),
('Nisa Nur Şanlı'),
('Bahar Kayaalp'),
('Baran Alaybey');



CREATE TABLE Supervisor (
    supervisor_id INT IDENTITY(1,1) PRIMARY KEY,
    supervisor_name NVARCHAR(200) NOT NULL
);
INSERT INTO Supervisor (supervisor_name)
VALUES
('Delal Abdullatif Abzak'),
('Fatma Özlem Acar'),
('Özde Acarkan'),
('Atahan Adanır'),
('Hacı Mehmet Adıgüzel'),
('Mükerrem Zeynep Ağca'),
('Bestami Ağırağaç'),
('Aykanat Ağıroğlu'),
('Şennur Ağnar'),
('Tutkum Ahmadı Asl'),
('Mügenur Ahmet'),
('Sevinç Ak'),
('Kayıhan Nedim Akarcalı'),
('Lemi Akarçay'),
('Cihan Akarpınar'),
('Rafi Akaş'),
('Mehmetcan Akay'),
('Nuhaydar Akbilmez'),
('Emine Münevver Akca'),
('Servet Akçagunay');



CREATE TABLE CoSupervisor (
    cosup_id INT IDENTITY(1,1) PRIMARY KEY,
    cosup_name NVARCHAR(200) NOT NULL
);
INSERT INTO CoSupervisor (cosup_name)
VALUES
('Recep Ali Samet Akdoğan'),
('Emre Ayberk Akfırat'),
('Kerime Hacer Akıllı'),
('Ercüment Akıncılar'),
('Sarper Akış'),
('Berker Akkiray'),
('İclal Akkoyun'),
('Lemis Akküt'),
('Ahmet Polat Aklar Çörekçi'),
('Ata Kerem Akman'),
('Ahmet Raşit Akoğuz'),
('Ecem Hatice Akova'),
('Nüket Aksan'),
('Senem Aksevim'),
('Ayşen Aksoy'),
('Pekcan Aksöz'),
('Bedirhan Lütfü Akşamoğlu'),
('Semina Aktuna'),
('Eda Sena Akyıldız'),
('Müyesser Akyildirim');



CREATE TABLE SubjectTopic (
    topic_id INT IDENTITY(1,1) PRIMARY KEY,
    topic_name NVARCHAR(200) NOT NULL
);
INSERT INTO SubjectTopic (topic_name)
VALUES 
('Agricultural Sciences'),
('Gastronomy Education'),
('Irrigation Techniques'),
('Digital Advertising and Marketing'),
('Educational Programs and Policies'),
('Design and Innovation'),
('Media and Communication Studies'),
('Renewable Energy Systems'),
('Urban Planning and Development'),
('Human Resource Management'),
('Tourism and Hospitality Management'),
('Information Security'),
('Leadership and Management'),
('Blockchain and Distributed Systems'),
('Environmental Science'),
('Cultural and Artistic Studies'),
('Climatology and Climate Change'),
('Social Policy and Gender Studies'),
('Sustainability and Waste Management'),
('Workplace Psychology');




CREATE TABLE Keyword (
    keyword_id INT IDENTITY(1,1) PRIMARY KEY,
    keyword_name NVARCHAR(200) NOT NULL
);
INSERT INTO Keyword (keyword_name)
VALUES 
('Agronomy'),
('Crop Management'),
('Sustainable Agriculture'),
('Culinary Education'),
('Food Science'),
('Cooking Techniques'),
('Water Conservation'),
('Soil Irrigation'),
('Water Efficiency'),
('Online Marketing'),
('Content Strategy'),
('Consumer Behavior'),
('Educational Reform'),
('Curriculum Design'),
('Learning Outcomes'),
('Creative Process'),
('Product Design'),
('Innovation Strategies'),
('Public Relations'),
('Communication Strategy'),
('Media Production'),
('Clean Energy'),
('Green Technology'),
('Energy Efficiency'),
('Urban Sustainability'),
('Infrastructure Development'),
('Smart Cities'),
('Leadership Development'),
('Employee Engagement'),
('Performance Management'),
('Ecotourism'),
('Destination Management'),
('Cultural Tourism'),
('Network Security'),
('Encryption'),
('Cyber Attacks'),
('Strategic Leadership'),
('Organizational Development'),
('Management Theories'),
('Decentralized Systems'),
('Digital Currency'),
('Blockchain Innovation'),
('Environmental Sustainability'),
('Climate Policy'),
('Green Initiatives'),
('Cultural Preservation'),
('Art Conservation'),
('Heritage Management'),
('Global Warming'),
('Climate Policy'),
('Environmental Risks'),
('Gender Studies'),
('Equality Programs'),
('Women Empowerment'),
('Waste Reduction'),
('Circular Economy'),
('Sustainable Resources'),
('Occupational Health'),
('Stress Management'),
('Work-Life Balance');





CREATE TABLE Thesis (
    thesis_no INT IDENTITY(1,1) PRIMARY KEY CHECK (thesis_no BETWEEN 0 AND 9999999),
    title NVARCHAR(500) NOT NULL,
    abstract NVARCHAR(MAX),
    author INT NOT NULL,
    year INT NOT NULL,
    type INT NOT NULL,
    university INT NOT NULL,
    institute INT NOT NULL,
    number_of_pages INT NOT NULL,
    language INT NOT NULL,
    submission_date DATE NOT NULL,
    supervisor INT NOT NULL,
    cosupervisor INT NULL,
    FOREIGN KEY (author) REFERENCES Author(author_id),
    FOREIGN KEY (type) REFERENCES Type(type_id),
    FOREIGN KEY (university) REFERENCES University(university_id),
    FOREIGN KEY (institute) REFERENCES Institute(institute_id),
    FOREIGN KEY (language) REFERENCES Language(language_id),
    FOREIGN KEY (supervisor) REFERENCES Supervisor(supervisor_id),
    FOREIGN KEY (cosupervisor) REFERENCES CoSupervisor(cosup_id)
);

INSERT INTO Thesis ( title, abstract, author, year, type, university, institute, number_of_pages, language, submission_date, supervisor, cosupervisor)
VALUES
( 'The Future of Agricultural Sciences: Sustainable Practices and Innovations', 'This research focuses on the integration of sustainable agriculture techniques, crop management, and advanced irrigation systems to enhance food security.', 1, 2024, 1, 1, 1, 200, 1, '2024-11-01', 1, 1),
( 'Culinary Education and Gastronomy: Blending Tradition and Modernity', 'This thesis explores the evolving landscape of culinary education, integrating food science, cooking techniques, and the art of gastronomy into modern teaching methodologies.', 2, 2024, 2, 1, 2, 150, 1, '2024-10-10', 2, 2),
( 'Irrigation Techniques in Agricultural Engineering: Innovations in Water Efficiency', 'A study of the most recent advancements in irrigation systems that promote water conservation and enhance crop productivity.', 3, 2024, 3, 2, 3, 180, 1, '2024-09-15', 3, 3),
( 'Digital Marketing in the 21st Century: A New Era of Advertising', 'This thesis examines the role of online marketing strategies, content creation, and consumer behavior in shaping modern advertising trends.', 4, 2024, 4, 3, 4, 220, 1, '2024-08-05', 4, 4),
( 'Education Systems and Policy Making: Innovations in Curriculum Development', 'Exploring the impact of curriculum design, teacher training, and educational reforms on the effectiveness of modern education systems.', 5, 2024, 5, 5, 5, 250, 1, '2024-07-20', 5, 5),
( 'Design and Innovation: How Creativity Shapes the Future of Technology', 'This research looks into the creative processes and innovative design solutions that influence the future of product design and technology.', 6, 2024, 6, 6, 6, 200, 1, '2024-06-18', 6, 6),
( 'Media Communication Strategies in the Digital Age', 'This work investigates the changing landscape of media production, public relations, and communication strategies in a digital, interconnected world.', 7, 2024, 7, 7, 7, 190, 1, '2024-05-30', 7, 7),
( 'Renewable Energy Systems: The Role of Clean and Green Technologies', 'Examining renewable energy solutions such as solar, wind power, and energy efficiency practices in building a sustainable energy future.', 8, 2024, 8, 8, 8, 210, 1, '2024-04-15', 8, 8),
( 'Sustainable Urban Development: Innovations in Smart Cities', 'An exploration of urban sustainability practices, infrastructure development, and the role of smart city technologies in enhancing urban living.', 9, 2024, 9, 9, 9, 230, 1, '2024-03-10', 9, 9),
( 'Human Resource Management in a Globalized Workforce', 'This research delves into employee engagement, performance management, and HR strategies for fostering productivity in diverse global organizations.', 10, 2024, 10, 10, 10, 180, 1, '2024-02-05', 10, 10),
( 'Tourism and Hospitality: Sustainable Practices for the Future', 'Investigating sustainable tourism development practices, cultural tourism, and hospitality management in the modern travel industry.', 11, 2024, 1, 11, 11, 300, 1, '2024-01-25', 11, 11),
( 'Cybersecurity in the Modern Age: A Deep Dive into Data Protection', 'This thesis covers the critical issues of network security, encryption, and cyber-attacks, proposing solutions to enhance data protection in the digital era.', 12, 2024, 2, 12, 12, 220, 1, '2024-01-15', 12, 12),
( 'Leadership and Organizational Behavior: Driving Change in the Workplace', 'Exploring the role of leadership styles, organizational behavior, and team management in fostering organizational success and adaptability.', 13, 2024, 3, 13, 13, 200, 1, '2024-12-12', 13, 13),
( 'Blockchain Technology: Disrupting Financial Systems', 'A comprehensive analysis of blockchain technology, its role in decentralizing financial systems, and its potential to revolutionize banking and smart contracts.', 14, 2024, 4, 14, 14, 180, 1, '2024-11-25', 14, 14),
( 'Environmental Science and Sustainability: Tackling Global Warming', 'Investigating how environmental policies, green initiatives, and sustainability practices can mitigate the effects of global warming and environmental risks.', 15, 2024, 5, 15, 15, 250, 1, '2024-10-10', 15, 15),
( 'Cultural Preservation in the Age of Digitalization', 'Exploring the importance of cultural heritage, art conservation, and heritage management in preserving global cultural identities in the digital era.', 16, 2024, 6, 16, 16, 210, 1, '2024-09-30', 16, 16),
( 'Social Policy and Gender Studies: The Fight for Equality', 'Examining the role of gender studies, women empowerment, and equality programs in shaping modern social policies and societal change.', 17, 2024, 7, 17, 17, 190, 1, '2024-08-15', 17, 17),
( 'Sustainability and Waste Management: Challenges and Solutions', 'This research addresses the global challenge of waste management, recycling, and sustainable resource use in urban areas.', 18, 2024, 8, 18, 18, 250, 1, '2024-07-01', 18, 18),
( 'Workplace Psychology: Understanding Mental Health and Productivity', 'A study on how workplace health, stress management, and work-life balance impact employee productivity and organizational success.', 19, 2024, 9, 19, 19, 240, 1, '2024-06-12', 19, 19),
( 'Advances in Marine Engineering: Protecting Our Oceans', 'Investigating marine engineering solutions aimed at reducing ocean pollution, protecting coastal ecosystems, and promoting sustainable practices in marine environments.', 20, 2024, 10, 20, 20, 230, 1, '2024-05-22', 20, 20);








CREATE TABLE ThesisKeyword (
    id INT IDENTITY(1,1) PRIMARY KEY,
    thesis_no INT NULL,
    keyword_id INT NOT NULL,
    FOREIGN KEY (thesis_no) REFERENCES Thesis(thesis_no),
    FOREIGN KEY (keyword_id) REFERENCES Keyword(keyword_id)
);
INSERT INTO ThesisKeyword (thesis_no, keyword_id) VALUES
(1, 1), (1, 2), (1, 3),
(2, 4), (2, 5), (2, 6),
(3, 7), (3, 8), (3, 9),
(4, 10), (4, 11), (4, 12),
(5, 13), (5, 14), (5, 15),
(6, 16), (6, 17), (6, 18),
(7, 19), (7, 20), (7, 21),
(8, 22), (8, 23), (8, 24),
(9, 25), (9, 26), (9, 27),
(10, 28), (10, 29), (10, 30),
(11, 31), (11, 32), (11, 33),
(12, 34), (12, 35), (12, 36),
(13, 37), (13, 38), (13, 39),
(14, 40), (14, 41), (14, 42),
(15, 43), (15, 44), (15, 45),
(16, 46), (16, 47), (16, 48),
(17, 49), (17, 50), (17, 51),
(18, 52), (18, 53), (18, 54),
(19, 55), (19, 56), (19, 57),
(20, 58), (20, 59), (20, 60);

CREATE TABLE ThesisSubject (
    id INT IDENTITY(1,1) PRIMARY KEY,
    thesis_no INT NOT NULL,
    topic_id INT NOT NULL,
    FOREIGN KEY (thesis_no) REFERENCES Thesis(thesis_no),
    FOREIGN KEY (topic_id) REFERENCES SubjectTopic(topic_id)
);
INSERT INTO ThesisSubject (thesis_no, topic_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);


SELECT 
    T.thesis_no,
    T.title,
    T.abstract,
    A.author_name AS thesis_autname,
    T.year,
    Ty.type_name AS thesis_type,
    U.university_name,
    I.institute_name,
    T.number_of_pages,
    L.language_name,
    T.submission_date,
    S.supervisor_name,
    ST.topic_name AS thesis_topic,
    CS.cosup_name,
    K.keyword_name
    
FROM Thesis T 
LEFT JOIN Author A ON T.author = A.author_id
LEFT JOIN Type Ty ON T.type = Ty.type_id
LEFT JOIN University U ON T.university = U.university_id
LEFT JOIN Institute I ON T.institute = I.institute_id
LEFT JOIN Language L ON T.language = L.language_id
LEFT JOIN Supervisor S ON T.supervisor = S.supervisor_id
LEFT JOIN ThesisSubject TS ON T.thesis_no = TS.thesis_no
LEFT JOIN SubjectTopic ST ON TS.topic_id = ST.topic_id
LEFT JOIN CoSupervisor CS ON T.cosupervisor = CS.cosup_id
LEFT JOIN ThesisKeyword TK ON T.thesis_no = TK.thesis_no
LEFT JOIN Keyword K ON TK.keyword_id = K.keyword_id 
WHERE (K.keyword_name LIKE '%keyword_search%' OR '%keyword_search%' = '')
AND (ST.topic_name LIKE '%subject_search%' OR '%subject_search%' = ''); 

