SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(111) NOT NULL,
  `details` varchar(333) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `pic`, `details`, `date`) VALUES
(1, 'Capsule', 'cap.png', 'The drugs which are present in capsule', '2024-02-20 04:58:520'),
(2, 'Tablets', 'tablet.png', 'The Drugs which are present in Tablets', '2024-02-20 04:58:520'),
(3, 'Syrup', 'syrup.png', 'The Drugs which are present in Syrup', '2024-02-20 04:59:24'),
(4, 'Injection', 'injection.jpg', 'The Drugs which are present in Injection', '2024-02-20 05:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `inventeries`
--

CREATE TABLE `inventeries` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `supplier` varchar(222) NOT NULL,
  `name` text NOT NULL,
  `unit` text NOT NULL,
  `effect` text NOT NULL,
  `price` text NOT NULL,
  `pic` text NOT NULL,
  `description` text NOT NULL,
  `company` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventeries`
--

INSERT INTO `inventeries` (`id`, `catId`, `supplier`, `name`, `unit`,`effect`, `price`, `pic`, `description`, `company`, `date`) VALUES
(5, 2, 'Rasia Khan', 'Aspirin', '10mg','upset stomach,heartburn,drowsiness, or mild headache.', '5', 'care.jpeg', ' It works by stopping the production of certain natural substances that cause fever, pain, swelling, and blood clots', 'Dr. Reddy’s Laboratories', '2024-02-20 06:10:32'),
(6, 4, 'Vikranth', 'amoxicillin', '25mg','damages to liver', '10', 'care.jpeg', 'It is used to treat bacterial infections, such as chest infections (including pneumonia) and dental abscesses', 'Dr. Reddy’s Laboratories', '2024-02-20 06:10:40'),
(20, 2, 'Rasia Khan', 'antitoxin', '20mg','Headache,hives or welts,itching skin', '20', 'care.jpeg', 'is capable of neutralizing the specific toxin (such as a specific causative agent of disease) that stimulated its production in the body', 'Dr. Reddy’s Laboratories', '2024-02-20 06:10:43'),
(9, 2, 'Rasia Khan', 'Disprin', '6mg','Indigestion,Feeling sick or vomiting,Stomach or intestinal discomfort.', '3', 'care.jpeg', 'Absorbs and dissolves away the pain fast and provides relief from headache and migrain', 'Dr. Reddy’s Laboratories', '2024-02-20 06:10:48'),
(10, 2, 'Rasia Khan', 'Abilify', '100mg','blurred vision,increased saliva or drooling,muscle stiffness', '6', 'care.jpeg', 'Abilify is an antipsychotic medication. It works by changing the actions of chemicals in the brain.', 'Dr. Reddy’s Laboratories', '2024-02-20 06:11:36'),
(11, 4, 'Vikranth', 'Abilify Maintena', '200mg','feeling unusually hot or cold,trouble swallowing,a seizure', '30', 'care.jpeg', 'Abilify Maintena (aripiprazole) extended-release injection is used alone or in combination with other aripiprazole preparations to treat schizophrenia ', 'Dr. Reddy’s Laboratories', '2024-02-20 06:11:43'),
(3, 2, 'Rasia Khan', 'Abiraterone', '60mg','feeling very hot,high blood sugar,increased blood pressure', '20', 'care.jpeg', 'Abiraterone works by reducing androgen production in the body. Androgens are male hormones that can promote tumor growth in the prostate gland.', 'Dr. Reddy’s Laboratories', '2024-02-20 06:11:50'),
(13, 2, 'Rasia Khan', 'Bacitracin', '50mg','Local irritation and allergic reactions (pruritus, edema of the conjunctiva and eyelid, conjunctival erythema).', '16', 'care.jpeg', 'For the treatment of superficial ocular infections involving the conjunctiva and/or cornea caused by Bacitracin susceptible organisms.', 'Dr. Reddy’s Laboratories', '2024-02-20 06:11:53'),
(14, 2, 'Rasia Khan', 'Baclofen', '100mg',' severe drowsiness, breathing problems,confusion, hallucinations,muscle weakness, itching, tingling, or twitching in your hands, arms, feet, or legs or fever.', '14', 'care.jpeg', 'Baclofen is an antispasmodic agent that acts on spinal cord nerves and decreases the number and severity of muscle spasms in patients with certain conditions affecting the spinal cord.', 'Dr. Reddy’s Laboratories', '2024-02-20 06:11:56'),

(16, 4, 'Vikranth', 'Cabenuva', '2mg','dizziness,fever,feeling tired,headache,nausea', '19', 'care.jpeg', 'Cabenuva is a prescription medicine that is used without any other antiviral medicines to treat HIV. It is not a cure for HIV or AIDS.', 'Dr. Reddy’s Laboratories', '2024-02-20 06:03:09'),
(30, 3, 'Neeraj Jain', 'Cabometyx', '40mg','pain in your muscles, bones, and joints', '18', 'care.jpeg', 'It is used to treat liver cancer (hepatocellular carcinoma)', 'Aurobindo Pharmaceuticals', '2024-02-20 06:30:09'),
(18, 3, 'Neeraj Jain', 'Calcitriol', '20mg','cholestyramine,digoxin, and digitalis ketoconazole', '55', 'care.jpeg', 'It  is also used to treat calcium deficiency in people with hypoparathyroidism (underactive parathyroid glands) caused by surgery, disease, or other conditions.', 'Dr. Reddy’s Laboratories', '2024-02-20 06:30:09'),
(19, 3, 'Neeraj Jain', 'Calcium carbonate', '90mg','little or no urinating,swelling, rapid weight gain', '25', 'care.jpeg', 'It is used to prevent or to treat a calcium deficiency.', 'Aurobindo Pharmaceuticals', '2024-02-20 06:30:09'),
(21, 3, 'Bharatdwaj', 'Canasa', '200mg','cramps,fever,and stomach (abdominal) pain', '65', 'care.jpeg', 'Canasa is a prescription medicine used to treat adults with active ulcerative proctitis (ulcerative rectal colitis).', 'Aurobindo Pharmaceuticals', '2024-02-20 06:30:09'),
(22, 3, 'Bharatdwaj', 'Candesartan', '50mg','high potassium, headache, and back pain', '45', 'care.jpeg', 'Candesartan is used to treat high blood pressure (hypertension) in adults and children who are at least 1 year old', 'Aurobindo Pharmaceuticals', '2024-02-20 06:30:09'),
(23, 3, 'Bharatdwaj', 'Caplyta', '650mg','nausea, dizziness, drowsiness or dry mouth.', '5', 'care.jpeg', 'Caplyta (lumateperone) is used in adults to treat the symptoms of schizophrenia', 'Aurobindo Pharmaceuticals', '2024-02-20 06:30:09'),
(24, 3, 'Bharatdwaj', 'Captopril', '600mg','low blood cell counts, decreased sense of taste or mild skin itching or rash.', '23', 'care.jpeg', 'Captopril is used in adults alone or in combination with other medications to treat high blood pressure (hypertension) and congestive heart failure.', 'Aurobindo Pharmaceuticals', '2024-02-20 06:30:09'),
(25, 3, 'Bharatdwaj', '', '500mg','', '27', 'care.jpeg', 'It ', 'Aurobindo Pharmaceuticals', '2024-02-20 06:03:09'),

(26, 3, 'Bharatdwaj', 'Dapagliflozin', '200mg','Anxiety, bladder pain, bloody or cloudy urine and blurred vision', '20', 'care.jpeg', 'Dapagliflozin is used together with proper diet and exercise to treat type 2 diabetes', 'Abbott India ', '2024-02-20 06:03:09'),
(27, 4, 'Rasia Khan', 'Darzalex', '100mg','cough with yellow or green mucus,stabbing chest pain, wheezing, feeling short of breath', '22', 'care.jpeg', 'It is used to treat multiple myeloma, which is a cancer of white blood cells called plasma cells.', 'Abbott India ', '2024-02-20 06:03:09'),
(28, 2, 'Rasia Khan', 'Dayvigo', '50mg','unusual drowsiness, dullness, tiredness, weakness, or feeling of sluggishness', '26', 'care.jpeg', 'Dayvigo (lemborexant) is a sleeping pill that helps people who have trouble falling or staying asleep to sleep better.', 'Abbott India ', '2024-02-20 06:03:09'),
(29, 2, 'Vikranth', 'Decadron', '25mg','blurred vision, tunnel vision, eye pain, or seeing halos around lights', '28', 'care.jpeg', 'Decadron is used to treat many different conditions such as allergic disorders', 'Abbott India ', '2024-02-20 06:3:09'),
(17, 4, 'Vikranth', 'Degarelix', '40mg','severe headache, blurred vision, pounding in your neck or ears.', '29', 'care.jpeg', 'Degarelix injection is used to treat prostate cancer. It works by decreasing the amount of testosterone in the body, which the tumor needs to grow.', 'Abbott India ', '2024-02-20 06:03:09'),
(31, 4, 'Vikranth', 'Denosumab', '50mg','swelling, pain, tenderness, warmth, or redness anywhere on your body', '24', 'care.jpeg', 'denosumab is used in adults to treat osteoporosis or bone loss in people who are at high risk for broken bones', 'Abbott India ', '2024-02-20 06:30:09'),
(32, 2, 'Vikranth', 'Depakote', '100mg','fever, swollen glands, mouth sores', '21', 'care.jpeg', 'Depakote tablets and capsules are used to treat seizures in people with epilepsy who are at least 10 years old.', 'Abbott India ', '2024-02-20 06:30:09'),
(33, 4, 'Vikranth', 'Descovy', '50mg','headache, dizziness, feeling depressed or tired', '26', 'care.jpeg', 'It is used to reduce the risk of becoming infected with HIV. ', 'Abbott India ', '2024-02-20 06:03:09'),
(34, 4, 'Vikranth', 'Desloratadine', '250mg','drowsiness, tiredness or menstrual pain.', '27', 'care.jpeg', 'Desloratadine is also used to treat skin hives and itching in people with chronic skin reactions.', 'Abbott India ', '2024-02-20 06:30:09'),
(35, 4, 'Vikranth', 'Desvenlafaxine', '200mg','cough, chest discomfort, trouble breathing', '24', 'care.jpeg', 'Desvenlafaxine is used to treat major depressive disorder.', 'Abbott India ', '2024-02-20 06:03:09'),

(36, 1, 'Prashanth', 'Panadol', '100mg','stomach pain,light headedness,rashes burning sensation', '30', 'care.jpeg', 'This drug is used to treat mild to moderate pain ', 'Cipla ', '2024-02-20 16:20:25'),
(37, 1, 'Prashanth', 'Pantoprazole', '100mg','increased hunger and thirst,nausea,dry mouth and blurred vision', '33', 'care.jpeg', 'It is used to treat erosive esophagitis in adults and children babove 5 years old.', 'Cipla ', '2024-02-20 16:20:25'),
(38, 1, 'Prashanth', 'Paracetamol', '100mg','Skin rashes,itching, or hives', '32', 'care.jpeg', 'It is uesd for relief of headache,migrane and acts as a pain killer', 'Cipla ', '2024-02-20 16:20:25'),
(39, 1, 'Prashanth', 'Pentasa', '100mg','rashes,itching,eye redness and stomach cramps', '38', 'care.jpeg', 'It is used to treat mild to moderate ulcerative colitis in adults', 'Cipla ', '2024-02-20 16:20:25'),
(40, 1, 'Prashanth', 'Paroxetine', '100mg','Acid or sour stomach,belching,heartburn,passing gas and sleepiness', '35', 'care.jpeg', 'It is uesd to treat depression, including major depressive disorder', 'Cipla ', '2024-02-20 16:20:25'),
(41, 1, 'Prashanth', 'Paxil', '100mg','Vision changes,weakness,anxiety and insomnia', '34', 'care.jpeg', 'It is used to treat panic disorder,OCD,PTSD and PMDD', 'Cipla ', '2024-02-20 16:20:25'),
(42, 1, 'Prashanth', 'Paxlovid', '100mg','Diarrhea,change in taste,headache and high BP', '33', 'care.jpeg', 'It is used to treat COVID-19', 'Cipla ', '2024-02-20 16:20:25'),
(43, 1, 'Prashanth', 'Pradaxa', '100mg','headache,weakness,dizziness and bloody stools', '30', 'care.jpeg', 'It is used to treat blood clots deep in the body ', 'Cipla ', '2024-02-20 16:20:25'),
(44, 1, 'Prashanth', 'Pepcid', '100mg','headache,dizziness or diarrhea', '35', 'care.jpeg', 'It is used to treat and prevent ulcers in the stomach and intestines', 'Cipla ', '2024-02-20 16:20:25'),
(45, 1, 'Prashanth', 'Percocet', '100mg','headache,dizziness or constipation', '39', 'care.jpeg', 'It is used to relieve moderate to severe pain', 'Cipla ', '2024-02-20 16:20:25'),

(46, 4, 'Vikranth', 'Macugen', '5mg','vision changes,eye pain or discomfort', '24', 'care.jpeg', 'It is used to treat wet age-related macular degeneration.', 'Abbott India ', '2024-02-20 06:30:09'),
(47, 4, 'Vikranth', 'Epinephrine', '2mg','fast, irregular, or pounding heartbeats', '24', 'care.jpeg', 'It is used to treat severe allergic reactions (anaphylaxis) to insect stings or bites, foods, drugs, and other allergens.', 'Abbott India ', '2024-02-20 06:30:09'),
(48, 4, 'Vikranth', 'Aristada ', '3mg','headache, dizziness,diarrhea, and constipation', '24', 'care.jpeg', 'It is used to treat symptoms of gastroesophageal reflux disease .', 'Abbott India ', '2024-02-20 06:30:09'),
(49, 4, 'Vikranth', 'Givlaari', '1mg','eye pain or redness, swelling around your eyes', '24', 'care.jpeg', 'It  is used to treat the "wet form" of age-related macular degeneration.', 'Abbott India ', '2024-02-20 06:30:09'),
(50, 4, 'Vikranth', 'Zilretta ', '4mg','blurred vision, tunnel vision, eye pain, or seeing halos around lights', '24', 'care.jpeg', ' Zilretta is for injection directly into the knee and and should not be administered by any other injection method.', 'Abbott India ', '2024-02-20 06:30:09'),
(51, 4, 'Vikranth', 'Lucentis ', '5mg','sudden numbness or weakness (especially on one side of the body)', '24', 'care.jpeg', 'It  is used to treat the "wet form" of age-related macular degeneration.', 'Abbott India ', '2024-02-20 06:30:09'),

(52, 1, 'Prashanth', 'Gabapentin', '100mg','fever, chills, sore throat, body aches, tiredness', '30', 'care.jpeg', 'It used to treat partial seizures, nerve pain from shingles and restless leg syndrome. ', 'Cipla ', '2024-02-20 16:20:25'),
(53, 1, 'Prashanth', 'Galantamine ', '200mg','stomach pain,light headedness,rashes burning sensation', '30', 'care.jpeg', 'It is used to treat mild to moderate Alzheimers type dementia.', 'Cipla ', '2024-02-20 16:20:25'),
(66, 1, 'Prashanth', 'Gaviscon', '300mg','swelling of your face, lips, tongue, or throat.', '30', 'care.jpeg', 'It is used to provide temporary relief from heartburn and acid indigestion caused by acid reflux. ', 'Cipla ', '2024-02-20 16:20:25'),
(54, 1, 'Prashanth', 'Glyxambi ', '150mg','pain and burning when you urinate, painful urination', '30', 'care.jpeg', 'Glyxambi is used together with diet and exercise to improve blood sugar control in adults with type 2 diabetes mellitus.', 'Cipla ', '2024-02-20 16:20:25'),
(55, 1, 'Prashanth', 'Glycerin ', '600mg','Headache,nausea or vomiting', '30', 'care.jpeg', 'It  is used to treat certain conditions in which there is increased eye pressure, such as glaucoma.', 'Cipla ', '2024-02-20 16:20:25'),

(56, 2, 'Rasia Khan', 'Famotidine ', '450mg','confusion, hallucinations, agitation, lack of energy', '10', 'care.jpeg', 'It is used to treat and prevent ulcers in the stomach and intestines', 'Dr. Reddy’s Laboratories', '2024-02-20 06:3:03'),
(57, 2, 'Rasia Khan', 'Flovent', '400mg','weakness, tired feeling, nausea, vomiting, feeling like you might pass out', '10', 'care.jpeg', 'It  is used to prevent asthma attacks. This medicine will not treat an asthma attack that has already begun.', 'Dr. Reddy’s Laboratories', '2024-02-20 06:3:03'),
(58, 2, 'Rasia Khan', 'Fluconazole', '650mg','seizure (convulsions),skin rash or skin lesions', '10', 'care.jpeg', 'It is  used to prevent fungal infection in people who have a weak immune system', 'Dr. Reddy’s Laboratories', '2024-02-20 06:3:03'),
(59, 2, 'Rasia Khan', 'Fluoxetine', '490mg','blurred vision, tunnel vision, eye pain or swelling, or seeing halos around lights', '10', 'care.jpeg', 'It is used to treat major depressive disorder, bulimia nervosa (an eating disorder)', 'Dr. Reddy’s Laboratories', '2024-02-20 06:3:03'),
(60, 2, 'Rasia Khan', 'Forteo', '45mg','new or unusual swelling or lumps under your skin', '10', 'care.jpeg', 'It is used to treat osteoporosis caused by menopause, steroid use, or gonadal failure.', 'Dr. Reddy’s Laboratories', '2024-02-20 06:3:03'),

(61, 3, 'Bharatdwaj', 'Macrobid', '50mg','sudden chest pain or discomfort, wheezing, dry cough or hack', '27', 'care.jpeg', 'It is used to treat urinary tract infections.', 'Aurobindo Pharmaceuticals', '2024-02-20 06:03:09'),
(62, 3, 'Bharatdwaj', 'Medrol', '400mg','bruising, thinning skin, or any wound that will not heal', '27', 'care.jpeg', 'It is a steroid that prevents the release of substances in the body that cause inflammation. ', 'Aurobindo Pharmaceuticals', '2024-02-20 06:03:09'),
(63, 3, 'Bharatdwaj', 'Mobic', '550mg','swelling or rapid weight gain', '27', 'care.jpeg', 'It is used to relieve pain, tenderness, swelling, and stiffness caused by osteoarthritis  ', 'Aurobindo Pharmaceuticals', '2024-02-20 06:03:09'),
(64, 3, 'Bharatdwaj', 'Morphine', '650mg','slow heart rate, weak pulse, fainting, slow breathing (breathing may stop)', '27', 'care.jpeg', 'It  is used to treat moderate to severe pain when alternative pain relief medicines are not effective or not tolerated. ', 'Aurobindo Pharmaceuticals', '2024-02-20 06:03:09'),
(65, 3, 'Bharatdwaj', 'Mucinex ', '100mg','dizziness,headache,rash or nausea', '27', 'care.jpeg', 'It is used to reduce chest congestion caused by the common cold, infections, or allergies. ', 'Aurobindo Pharmaceuticals', '2024-02-20 06:03:09');

-- --------------------------------------------------------
--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `title`, `name`) VALUES
(1, 'Drug Safety Manegement', 'Drug Stores');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `contact` varchar(222) NOT NULL,
  `discount` varchar(222) NOT NULL,
  `item` varchar(222) NOT NULL,
  `amount` varchar(222) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sold`
--


-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `pic` text NOT NULL,
  `number` text NOT NULL,
  `address` text NOT NULL,
  `cnic` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `pic`, `number`, `address`, `cnic`, `date`) VALUES
(1, 'Prashanth', 'care.jpg', '98860209621', 'Banglore', '98563204985', '2024-02-20 020:23:49'),
(2, 'Rasia Khan', 'care.jpg', '20204002220', 'Mysuru', '98563204985', '2024-02-20 020:23:53'),
(3, 'Neeraj Jain', 'care.jpg', '86180220486', 'Mangalore', '98563204985', '2024-02-20 020:23:56'),
(4, 'Bharatdwaj', 'care.jpg', '9845428021', 'Hyderabad', '98563204985', '2024-02-20 020:23:59'),
(5, 'Vikranth', 'care.jpg', '20349559664', 'Chennai', '98563204985', '2024-02-20 020:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(222) NOT NULL,
  `number` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `pic`, `number`, `date`) VALUES
(1, 'admin@gmail.com', 'ADMIN', 'Health Care', 'care.jpeg', '1234567890', '2024-02-20 3:34:53');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventeries`
--
ALTER TABLE `inventeries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inventeries`
--
ALTER TABLE `inventeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;


