USE documents;
TRUNCATE TABLE document;
CREATE TABLE document (
  id INT(11) NOT NULL AUTO_INCREMENT,
  title VARCHAR(255),
  date VARCHAR(255),
  language CHAR(2),
  content LONGTEXT,
  PRIMARY KEY (id)
);

CREATE TABLE term (
  id INT(11),
  term VARCHAR(255)
);

-- INSERTING FIRST 5 EN DOCS
INSERT INTO document (title, date, language, content, reference) VALUES
('Avian Influenza A(H9N2) - Viet Nam', '19 April 2024', 'EN', 'The World Health Organization (WHO) was notified about a case of human infection with an influenza A(H9N2) virus in Viet Nam on 9 April 2024 by the International Health Regulations (IHR) National Focal Point (NFP). The patient, who had underlying conditions and was in severe condition was admitted to the intensive care on 21 March 2024. A respiratory sample was collected on 21 March and tested positive for influenza by Real-Time Polymerase Chain Reaction (PCR). Subsequently, virus subtyping confirmed avian influenza A(H9N2) on 8 April. Case investigation identified that the case lives near a poultry market, where poultry trade occurs daily in front of his house. As of 15 April, there have been no reports of new cases with respiratory symptoms among contacts of the case or outbreaks in the community where the case resides. This is the first human infection with an avian influenza A(H9N2) virus reported in Viet Nam. According to the IHR (2005), a human infection caused by a novel influenza A virus subtype is an event that has the potential for high public health impact and must be notified to the WHO. Based on available information, WHO assesses the risk to the general population posed by this virus as low.', 'World Health Organization (19 April 2024). Disease Outbreak News; Avian Influenza A(H9N2) in Viet Nam. Available at: https://www.who.int/emergencies/disease-outbreak-news/item/2024-DON514'),
('Rabies - Timor-Leste', '10 April 2024', 'EN', 'The Timor-Leste government reported to the World Health Organization on 22 March 2024, its first confirmed fatal human case of rabies. The country is currently classified as rabies-free. The case, from Pasabe Sub-Region, Oecusse, with a history of dog bite on 26 December 2023, went to a local health center on 20 March and died on 22 March 2024. As of 26 March, a total of 29 suspected rabies cases in humans, with exposure to dogs, were reported in Oecusse Municipality this year. The public health response is ongoing and includes vaccination of dogs, risk communication, training of healthcare workers on case management, active surveillance, and ensuring the availability of rabies vaccines and human rabies immunoglobulin. Based on the current available information, the WHO assesses the risk posed by this event as high at the national level and low at regional and global levels.', 'World Health Organization (10 April 2024). Disease Outbreak News; Rabies – Timor-Leste. Available at: https://www.who.int/emergencies/disease-outbreak-news/item/2024-DON513'),
('Avian Influenza A(H5N1) - United States of America', '9 April 2024', 'EN', 'The World Health Organization (WHO) was notified about a laboratory-confirmed case of human infection with an influenza A(H5N1) virus on 1 April 2024 by the United States of America IHR National Focal Point (NFP). The patient developed symptoms on 27 March and had a history of exposure to dairy cattle (cows) presumed to be infected with influenza A (H5N1) virus. This is the second confirmed human case of influenza A(H5N1) detected in the country. It also appears to be the first human infection with A(H5N1) acquired from contact with an infected mammal, although human infections with other influenza subtypes have previously been acquired from mammals. No additional associated cases of human infection with influenza A(H5N1) have been identified. Since the virus has not acquired mutations that facilitate transmission among humans and based on available information, WHO assesses the public health risk to the general population posed by this virus to be low and for occupationally exposed persons, the risk of infection is considered low-to-moderate.', 'World Health Organization (9 April 2024). Disease Outbreak News; Avian Influenza A (H5N1) – the United States of America. Available at: http://www.who.int/emergencies/disease-outbreak-news/iten/2024-DON512'),
('Yellow fever – African Region (AFRO)', '20 March 2024', 'EN', 'Since the beginning of 2023, and as of 25 February 2024, a total of 13 countries in the WHO African Region have documented probable and confirmed cases of yellow fever (YF), namely Burkina Faso, Cameroon, the Central African Republic, Chad, Republic of the Congo, Côte d’Ivoire, the Democratic Republic of the Congo (DRC), Guinea, Niger, Nigeria, South Sudan, Togo and Uganda. Preliminary data for 2023 indicate a case fatality rate (CFR) of 11%. While the overall risk at the regional level was re-assessed as moderate and the global risk remains low, active surveillance is required due to the potential for onward transmission through travel and the presence of the competent vector in neighboring regions. The urban proliferation of Aedes spp. mosquitoes, which bite during the day, can also significantly amplify transmission risks, particularly in densely populated areas, leading to swift outbreaks. The WHO-led global Eliminate Yellow Fever Epidemics (EYE) secretariat coordinated preventive and reactive efforts and notably during 2023, substantially enhanced vaccination coverage. Approximately 62 million people have been vaccinated in Africa through preventive and reactive mass vaccination campaigns. Additionally, under catch-up campaigns in Sudan, approximately 4 million individuals received vaccination against YF.', 'World Health Organization (20 March 2024). Disease Outbreak News; Yellow fever in African Region (AFRO). Available at: https://www.who.int/emergencies/disease-outbreak-news/item/2024-DON510'),
('Psittacosis – European region', '5 March 2024', 'EN', 'In February 2024, Austria, Denmark, Germany, Sweden and The Netherlands reported an increase in psittacosis cases observed in 2023 and at the beginning of 2024, particularly marked since November-December 2023. Five deaths were also reported. Exposure to wild and/or domestic birds was reported in most of the cases. Psittacosis is a respiratory infection caused by Chlamydophila psittaci (C. psittaci), a bacteria that often infects birds. Human infections occur mainly through contact with secretions from infected birds and are mostly associated with those who work with pet birds, poultry workers, veterinarians, pet bird owners, and gardeners in areas where C. psittaci is epizootic in the native bird population. The concerned countries have implemented epidemiological investigations to identify potential exposures and clusters of cases. Additionally, implemented measures include the analysis of samples from wild birds submitted for avian influenza testing to verify the prevalence of C. psittaci among wild birds. The World Health Organization continues to monitor the situation and, based on the available information, assesses the risk posed by this event as low.', 'World Health Organization (5 March 2024). Disease Outbreak News; Psittacosis – European region. Available at: https://www.who.int/emergencies/disease-outbreak-news/item/2024-DON509');

-- INSERTING FIRST 5 FR DOCS
INSERT INTO document (title, date, language, content, reference) VALUES
('Grippe aviaire A(H9N2) - Viet Nam', '19 avril 2024', 'FR', 'L’Organisation mondiale de la Santé (OMS) a été informée par un point focal national du Règlement sanitaire international (RSI) d’un cas d’infection humaine par le virus de la grippe A(H9N2) au Viet Nam le 9 avril 2024. Le patient, qui souffrait d’affections sous-jacentes et qui était dans un état grave, a été admis aux soins intensifs le 21 mars. Un échantillon respiratoire a été prélevé le 21 mars et s’est révélé positif à la grippe à l’issue d’une amplification en chaîne par polymérase (PCR) en temps réel. Le 8 avril, le sous-typage du virus a permis de confirmer qu’il s’agissait d’une grippe aviaire A(H9N2). L’enquête a révélé que le patient vivait à proximité d’un marché de volailles, et que des volatiles étaient échangés quotidiennement devant sa maison. Le 15 avril, aucun symptôme respiratoire n’a été signalé parmi les contacts du patient, et aucune épidémie n’a été rapportée dans la communauté où celui-ci résidait. Il s’agit du premier cas d’infection humaine par le virus de la grippe aviaire A(H9N2) signalé au Viet Nam. Selon le RSI (2005), une infection humaine par un nouveau sous-type de virus de la grippe A constitue un événement susceptible d’avoir des effets graves sur la santé publique et doit être notifiée à l’OMS. Sur la base des informations disponibles, l’Organisation estime que le risque que présente ce virus pour la population générale est faible.', 'Organisation mondiale de la Santé (19 avril 2024). Bulletin d’information sur les flambées épidémiques ; Grippe aviaire A(H9N2) au Viet Nam. Disponible à l’adresse suivante : https://www.who.int/fr/emergencies/disease-outbreak-news/item/2024-DON514'),
('Rage - Timor-Leste', '10 avril 2024', 'FR', 'Le 22 mars 2024, le Gouvernement du Timor-Leste a signalé à l’Organisation mondiale de la Santé (OMS), son premier cas humain mortel confirmé de rage. Le pays est actuellement classé comme exempt de rage. Le cas, originaire de la sous-région de Pasabe, Oecusse, qui avait subi des morsures de chien le 26 décembre 2023, s’est rendu dans un centre de santé local le 20 mars et est décédé le 22 mars 2024. Au 26 mars, un total de 29 cas suspects de rage chez l’humain, avec une exposition à des chiens, ont été signalés dans la municipalité d’Oecusse cette année. L’action de santé publique est en cours et comprend notamment la vaccination des chiens, la communication sur les risques, la formation des agents de santé à la prise en charge des cas, la surveillance active et les efforts visant à garantir la disponibilité de vaccins antirabiques et d’immunoglobuline humaine normale. Compte tenu des informations disponibles, l’OMS estime que le risque est élevé au niveau national, modéré au niveau régional et faible au niveau mondial.', 'Organisation mondiale de la Santé (10 avril 2024). Bulletin d’information sur les flambées épidémiques ; Rage – Timor-Leste. Disponible à l’adresse : https://www.who.int/fr/emergencies/disease-outbreak-news/item/2024-DON513'),
('Grippe aviaire A (H5N1) - États-Unis d’Amérique', '9 avril 2024', 'FR', 'Le 1er avril 2024, le point focal national RSI pour les États-Unis d’Amérique a notifié à l’OMS un cas, confirmé en laboratoire, d’infection humaine par le virus de la grippe aviaire A (H5N1). Le patient a présenté des symptômes le 27 mars et avait été exposé à du bétail laitier (vaches) présumé infecté par le virus de la grippe A (H5N1). Il s’agit du deuxième cas humain confirmé de grippe A (H5N1) détecté dans le pays. Il semble également qu’il s’agisse de la première infection humaine par le virus de la grippe A (H5N1) contractée par contact avec un mammifère infecté, même si des infections humaines par d’autres sous-types de grippe ont déjà été contractées par contact avec des mammifères. Aucun autre cas associé d’infection humaine par la grippe A (H5N1) n’a été identifié. Étant donné que le virus n’a pas acquis de mutations facilitant la transmission entre humains et sur la base des informations disponibles, l’OMS estime que le risque pour la santé publique que représente ce virus pour la population générale est faible et qu’il est faible à modéré pour les personnes exposées dans le cadre professionnel.', 'Organisation mondiale de la Santé (9 avril 2024). Bulletin d’information sur les flambées épidémiques; Grippe aviaire A (H5N1) – États-Unis d’Amérique. Disponible à l’adresse : http://www.who.int/fr/emergencies/disease-outbreak-news/item/2024-DON512'),
('Fièvre jaune – Région africaine', '20 mars 2024', 'FR', 'Du début de l’année 2023 au 25 février 2024, 13 pays de la Région africaine de l’OMS (le Burkina Faso, le Cameroun, la Côte d’Ivoire, la Guinée, le Niger, le Nigéria, l’Ouganda, la République centrafricaine, la République du Congo, la République démocratique du Congo (RDC), le Soudan du Sud, le Tchad et le Togo) ont enregistré des cas probables ou confirmés de fièvre jaune. D’après les données préliminaires pour 2023, le taux de létalité est de 11 %. Bien qu’à l’issue d’une nouvelle évaluation, le risque global à l’échelle régionale ait été considéré comme modéré et que le risque reste faible au niveau mondial, une surveillance active est nécessaire en raison de l’éventualité d’une transmission à l’occasion de voyages et compte tenu de la présence du vecteur compétent dans les régions voisines. La prolifération en milieu urbain des moustiques du genre Aedes, qui piquent pendant la journée, peut aussi accroître considérablement les risques de transmission, en particulier dans les zones densément peuplées, et entraîner rapidement des flambées. Le secrétariat mondial de la Stratégie d’élimination de l’épidémie de fièvre jaune (EYE, de l’anglais « Eliminate Yellow fever Epidemics »), dirigée par l’OMS, a coordonné les efforts de prévention et de riposte et a considérablement amélioré la couverture vaccinale, notamment en 2023. Environ 62 millions de personnes ont été vaccinées en Afrique dans le cadre de campagnes de masse, tant préventives que réactives. En outre, environ 4 millions de personnes ont été vaccinées contre la fièvre jaune au Soudan dans le cadre de campagnes de rattrapage.', 'Organisation mondiale de la Santé (20 mars 2024). Bulletin d’information sur les flambées épidémiques ; Fièvre jaune – Région africaine. Disponible à l’adresse : https://www.who.int/fr/emergencies/disease-outbreak-news/item/2024-DON510'),
('Psittacose – Région européenne', '5 mars 2024', 'FR', 'En février 2024, l’Allemagne, l’Autriche, le Danemark, les Pays-Bas et la Suède ont signalé, via le Système d’alerte précoce et de réaction (SAPR) de l’Union européenne, une augmentation du nombre de cas de psittacose observée en 2023 et au début de 2024 et particulièrement marquée depuis novembre-décembre 2023. Cinq décès ont également été notifiés. Une exposition à des oiseaux sauvages et/ou domestiques a été signalée dans la plupart des cas. La psittacose est une infection respiratoire causée par Chlamydophila psittaci (C. psittaci), une bactérie qui infecte souvent les oiseaux. Les infections humaines se produisent le plus souvent par contact avec des sécrétions d’oiseaux infectés et touchent principalement les personnes qui travaillent avec des oiseaux de compagnie, les travailleurs du secteur avicole, les vétérinaires, les propriétaires d’oiseaux de compagnie et les jardiniers dans les zones où C. psittaci est à l’origine d’une épizootie dans la population d’oiseaux autochtones. Les pays concernés ont lancé des enquêtes épidémiologiques pour repérer les expositions potentielles et les foyers épidémiques. De plus, les échantillons prélevés sur des oiseaux sauvages dans le but de dépister la grippe aviaire sont analysés afin d’estimer la prévalence de C. psittaci parmi les oiseaux sauvages. D’après les informations dont elle dispose, l’Organisation mondiale de la Santé, qui reste attentive à la situation, estime que le risque que représente cet événement est faible.', 'Organisation mondiale de la Santé (5 mars 2024). Bulletin d’information sur les flambées épidémiques ; Psittacose – Région européenne. Disponible à l’adresse : https://www.who.int/fr/emergencies/disease-outbreak-news/item/2024-DON509');

-- INSERTING FINAL 5 EN DOCS
INSERT INTO document (title, date, language, content, reference) VALUES
('Nipah virus infection - Bangladesh', '27 February 2024', 'EN', 'Outbreaks of Nipah virus (NiV) infection are seasonal in Bangladesh, with cases usually occurring annually between December and April corresponding with the harvesting and consumption of date palm sap. Since 1 January and as of 9 February 2024, two laboratory-confirmed cases of NiV have been reported from the Dhaka division of Bangladesh. Both cases have died. WHO assesses the overall risk at the national levels to be moderate due to the severity of the disease, the limitation of treatment, the shared natural habitat of bats and zoonotic transmission partners, and the fact that there are no licensed vaccines to prevent NiV infection.', 'World Health Organization (27 February 2024). Disease Outbreak News; Nipah virus infection – Bangladesh. Available at https://www.who.int/emergencies/disease-outbreak-news/item/2024-DON508'),
('Middle East Respiratory Syndrome Coronavirus - Kingdom of Saudi Arabia', '16 February 2024', 'EN', 'This is the bi-annual update on the Middle East Respiratory Syndrome Coronavirus (MERS-CoV) infections reported to the World Health Organization (WHO) from the Kingdom of Saudi Arabia (KSA). From 13 August 2023 to 1 February 2024, four laboratory-confirmed cases of MERS-CoV, including two deaths, were reported to WHO by the Ministry of Health of the KSA, with the last case being reported on 26 October 2023. Close contacts of the four cases were followed up by the Ministry of Health, and no secondary cases were identified. The notification of these four cases does not change the overall risk assessment, with the risk being moderate at both the global and regional level. The reporting of these cases reiterates the need for global awareness of MERS-CoV as the virus continues to pose a threat in countries where MERS-CoV is circulating in dromedary camels, including those in the Middle East.', 'World Health Organization (16 February 2024). Disease Outbreak News; Middle East respiratory syndrome coronavirus – Saudi Arabia. Available at: https://www.who.int/emergencies/disease-outbreak-news/item/2024-DON506'),
('Western Equine Encephalitis - Uruguay', '8 February 2024', 'EN', 'On 30 January 2024, the International Health Regulations National Focal Point (IHR NFP) of Uruguay notified the World Health Organization (WHO) of a human case of western equine encephalitis (WEE) virus infection. The patient is a 42-year-old from a rural area in the Department of San Jose, in southern Uruguay. This is the first confirmed human case reported in Uruguay in more than a decade, since the last reported human cases of WEE occurred in 2009. WEE is a rare mosquito-borne viral disease that affects equines and humans. Most human cases are associated with outbreaks in birds or horses. The virus has the potential to spread through the migration of infected birds or the movement of people and animals carrying the virus. Given that birds act as a reservoir, they can act as amplifying hosts for viral dissemination to other countries. At-risk groups include people who live, work, or participate in outdoor activities in endemic areas or where there are active disease outbreaks in animals. WEE virus vaccines are available for equines. It is advisable to seek high vaccination coverage among susceptible equines in areas considered at risk and to carry out annual vaccination boosters.', 'World Health Organization (8 February 2024). Disease Outbreak News; Western Equine Encephalitis in Uruguay. Available at:  https://www.who.int/emergencies/disease-outbreak-news/item/2024-DON505'),
('Avian Influenza A (H5N1) - Cambodia', '8 February 2024', 'EN', 'Between 26 and 28 January 2024, the Cambodia National Focal Point (NFP) for the International Health Regulations (IHR) notified the World Health Organization (WHO) of two confirmed cases of human infection with avian influenza A(H5N1) virus. These cases were reported from Kampong Trabek district, Prey Veng province, and Puok district, Siem Reap province, Cambodia. These are the first two cases of human infection with influenza A(H5N1) reported in Cambodia in 2024. One case was detected through severe acute respiratory infection (SARI) sentinel surveillance and one by a physician at a non-SARI sentinel site. Both patients had contact with sick poultry. There is no evidence of an epidemiological link between the two cases. In December 2003, Cambodia reported an outbreak of highly pathogenic avian influenza (HPAI) H5N1 for the first time, affecting wild birds. Following this, human cases due to poultry-to-human transmission were reported sporadically until 2014, after which there was a gap until the next cases reported in 2023: two cases each were reported in February, October, and November of 2023. H5N1 infection in humans can cause severe disease, has a high mortality rate, and is notifiable under IHR (2005).', 'World Health Organization (8 February 2024). Disease Outbreak News; Avian Influenza A (H5N1) - Cambodia. Available at: http://www.who.int/emergencies/disease-outbreak-news/item/2024-DON501'),
('Circulating vaccine-derived poliovirus type 2 (cVDPV2) - Indonesia', '11 January 2024', 'EN', 'Indonesia reported four cases of circulating vaccine-derived poliovirus type 2 (cVDPV2) from October 2022 to February 2023, with three cases occurring in Aceh province and one case in West Java province. On 20 and 27 December 2023, the Indonesian Ministry of Health notified WHO of two new confirmed cases of cVDPV2. One case, from Klaten District, Central Java Province, is a 6-year-old female, with a history of recent travel to Madura Island (Sampang district, East Java Province). The second case, a one-year-old male, is from the neighbouring district of Pamekasan on Madura Island, East Java. Sub-optimal vaccination coverage increases the risk of further transmission and impact on human health. In Klaten district, where the current case is reported, the coverage for four doses of bivalent oral polio vaccine (bOPV) and inactivated polio vaccine 1 (IPV1) was at 89.8% and 88.6% respectively in 2022. In the Pamekasan District, where the second case was reported the coverages for bOPV and IPV1were 88.1% and 74.1%, respectively in 2022. In response to the new cVDPV2 cases detected in Indonesia, several public health responses are underway. As per protocol, detailed case investigation and risk assessment have been conducted. Coordination across country and regional levels with the global polio eradication initiative is ongoing. The overall risk is assessed as high at the national level. At the regional level the overall risk is assessed to be moderate.', 'World Health Organization (11 January 2024). Disease Outbreak News; Circulating vaccine-derived poliovirus type 2 (cVDPV2) – Indonesia. Available at: https://www.who.int/emergencies/disease-outbreak-news/item/2024-DON500');

-- INSERTING FINAL 5 FR DOCS
INSERT INTO document (title, date, language, content, reference) VALUES
('Infection à virus Nipah - Bangladesh', '27 février 2024', 'FR', 'Les flambées d’infection à virus Nipah sont saisonnières au Bangladesh, des cas survenant généralement chaque année entre décembre et avril, pendant la période où la sève de palmier dattier est récoltée et consommée. Du 1er janvier au 9 février 2024, deux cas d’infection à virus Nipah confirmés en laboratoire ont été signalés dans la division de Dacca, au Bangladesh. Les deux personnes touchées sont décédées. L’OMS estime que le risque global au niveau national est modéré en raison de la gravité de la maladie, des moyens thérapeutiques limités, du fait que les chauves-souris et les hôtes intermédiaires responsables de la transmission zoonotique partagent le même habitat naturel, et de l’absence de vaccins homologués pour prévenir l’infection à virus Nipah.', 'Organisation mondiale de la Santé (27 février 2024). Bulletin d’information sur les flambées épidémiques ; Infection à virus Nipah – Bangladesh Disponible à l’adresse : https://www.who.int/fr/emergencies/disease-outbreak-news/item/2024-DON508'),
('Coronavirus du syndrome respiratoire du Moyen-Orient (MERS-CoV) - Arabie saoudite - Arabie Saoudite', '16 février 2024', 'FR', 'Ce bulletin est une mise à jour semestrielle sur les infections à coronavirus du syndrome respiratoire du Moyen-Orient (MERS-CoV) notifiées à l’OMS par l’Arabie saoudite. Entre le 13 août 2023 et le 1er février 2024, le Ministère saoudien de la santé a signalé à l’OMS quatre cas d’infection à MERS-CoV confirmés en laboratoire, dont deux mortels, le dernier cas ayant été notifié le 26 octobre 2023. Les contacts proches des quatre cas ont fait l’objet d’un suivi par le Ministère de la santé et aucun cas secondaire n’a été identifié. La notification de ces quatre cas ne modifie pas l’évaluation globale du risque qui reste modéré tant au niveau mondial que régional, mais réitère la nécessité d’une sensibilisation au MERS-CoV à l’échelle mondiale, car le virus continue de constituer une menace dans les pays où il circule parmi les dromadaires, y compris ceux du Moyen-Orient.', 'Organisation mondiale de la Santé (16 février 2024). Bulletin d’information sur les flambées épidémiques ; Coronavirus du syndrome respiratoire du Moyen-Orient – Arabie saoudite. Disponible à l’adresse  https://www.who.int/fr/emergencies/disease-outbreak-news/item/2024-DON506'),
('Encéphalite équine de l’Ouest (EEO) - Uruguay', '8 février 2024', 'FR', 'Le 30 janvier 2024, le point focal national pour le Règlement sanitaire international (RSI) de l’Uruguay a notifié à l’Organisation mondiale de la Santé (OMS) un cas humain d’infection par le virus de l’encéphalite équine de l’Ouest (EEO). Il s’agit d’un homme de 42 ans originaire d’une zone rurale du département de San José, dans le sud de l’Uruguay. C’est le premier cas humain confirmé signalé en Uruguay depuis plus de dix ans, le dernier cas humain ayant été signalé en 2009. L’encéphalite équine de l’Ouest (EEO) est une maladie virale rare transmise par les moustiques, qui touche les équidés et les humains. La plupart des cas humains sont associés à des flambées épidémiques chez les oiseaux ou les chevaux. La migration d’oiseaux infectés ou le déplacement de personnes et d’animaux porteurs du virus favorise la propagation de la maladie. Étant donné que les oiseaux agissent comme réservoir, ils peuvent amplifier la dissémination du virus dans d’autres pays. Les personnes qui vivent, travaillent ou participent à des activités de plein air dans des zones d’endémie ou là où des flambées actives touchent des animaux risquent de contracter la maladie. Des vaccins contre l’EEO sont disponibles pour les équidés. Il est conseillé de chercher à obtenir une couverture vaccinale élevée chez les équidés sensibles dans les zones considérées comme à risque et d’effectuer des rappels de vaccination chaque année.', 'Organisation mondiale de la Santé (8 février 2024). Bulletin d’information sur les flambées épidémiques ; Encéphalite équine de l’Ouest (EEO) en Uruguay. Disponible à l’adresse : https://www.who.int/fr/emergencies/disease-outbreak-news/item/2024-DON505'),
('Grippe aviaire A (H5N1) - Cambodge', '8 février 2024', 'FR', 'Entre le 26 et le 28 janvier 2024, le point focal national pour le Règlement sanitaire international (RSI) au Cambodge a notifié à l’Organisation mondiale de la Santé (OMS) deux cas confirmés d’infection humaine par le virus de la grippe aviaire A(H5N1). Ces cas ont été signalés dans le district de Kampong Trabek, dans la province de Prey Veng, et dans le district de Puok, dans la province de Siem Reap, au Cambodge. Il s’agit des deux premiers cas d’infection humaine par le virus de la grippe aviaire A(H5N1) signalés au Cambodge en 2024. Un cas a été détecté grâce à la surveillance sentinelle des infections respiratoires aiguës sévères (IRAS) et l’autre par un médecin sur un site non sentinelle. Dans les deux cas, les patients avaient été en contact avec des volailles malades. Rien n’indique qu’il puisse y avoir un lien épidémiologique entre ces deux cas. En décembre 2003, le Cambodge avait signalé pour la première fois une flambée de grippe aviaire à virus H5N1 hautement pathogène touchant des oiseaux sauvages. Des cas humains, dus à la transmission volailles-humains, ont été signalés sporadiquement jusqu’en 2014, puis aucun cas n’a été signalé jusqu’en 2023 (deux cas signalés respectivement en février, octobre et novembre 2023). Chez l’être humain, l’infection à virus H5N1 peut provoquer une maladie grave, associée à une forte mortalité. Elle est à déclaration obligatoire en application du RSI (2005).', 'Organisation mondiale de la Santé (8 février 2024). Bulletin d’information sur les flambées épidémiques ; Grippe aviaire A(H5N1) – Cambodge. Disponible à l’adresse : https://www.who.int/fr/emergencies/disease-outbreak-news/item/2024-DON501'),
('Poliovirus circulant dérivé d’une souche vaccinale de type 2 (PVDVc2) - Indonésie', '11 janvier 2024', 'FR', 'L’Indonésie a signalé quatre cas de poliovirus circulant dérivé d’une souche vaccinale de type 2 (PVDVc2) d’octobre 2022 à février 2023, dont trois cas dans la province d’Aceh et un cas dans la province de Java occidental. Les 20 et 27 décembre 2023, le Ministère indonésien de la santé a notifié à l’OMS deux nouveaux cas confirmés de PVDVc2. Le premier cas, originaire du district de Klaten, dans la province de Java central, est une fillette de 6 ans qui a récemment voyagé sur l’île de Madura (district de Sampang, province de Java oriental). Le deuxième cas, un petit garçon d’un an, est originaire du district voisin de Pamekasan, sur l’île de Madura, dans l’est de Java. Le risque de poursuite de la transmission et d’impact sur la santé humaine est aggravé par une couverture vaccinale insuffisante. Dans le district de Klaten, où le cas actuel est signalé, la couverture par quatre doses du vaccin antipoliomyélitique oral bivalent (VPOb) et par la première dose du vaccin antipoliomyélitique inactivé (VPI1) était respectivement de 89,8 % et 88,6 % en 2022. Dans le district de Pamekasan, où le deuxième cas a été signalé, les couvertures pour le VPOb et le VPI1 étaient respectivement de 88,1 % et 74,1 % en 2022. En réponse aux nouveaux cas de PVDVc2 détectés en Indonésie, plusieurs mesures de santé publique sont actuellement appliquées. Conformément au protocole, une enquête détaillée sur les cas et une évaluation des risques ont été menées. La coordination aux niveaux national et régional avec l’Initiative mondiale pour l’éradication de la poliomyélite est en cours. Le risque global est évalué comme étant élevé à l’échelle nationale. À l’échelle régionale, il est considéré comme modéré.', 'Organisation mondiale de la Santé (11 janvier 2024). Bulletin d’information sur les flambées épidémiques ; Poliovirus circulant dérivé d’une souche vaccinale de type 2 (PVDVc2) — Indonésie. Disponible à l’adresse : https://www.who.int/fr/emergencies/disease-outbreak-news/item/2024-DON500');
