DROP DATABASE aylamusica;

CREATE DATABASE aylamusica;

USE aylamusica;

CREATE TABLE cancion (
    cancion_id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(255),
    artista VARCHAR(255),
    ruta_imagen VARCHAR(255),
    PRIMARY KEY (cancion_id)
);

CREATE TABLE parrafo (
    parrafo_id INT NOT NULL AUTO_INCREMENT,
    cancion_id INT NOT NULL,
    texto_parrafo TEXT,
    PRIMARY KEY (parrafo_id),
    FOREIGN KEY (cancion_id) REFERENCES cancion(cancion_id) ON DELETE CASCADE
);

CREATE TABLE comentario (
    comentario_id INT NOT NULL AUTO_INCREMENT,
    texto_comentario VARCHAR (255),
    parrafo_id INT NOT NULL,
    cancion_id INT NOT NULL,
    PRIMARY KEY (comentario_id),
    FOREIGN KEY (parrafo_id) REFERENCES parrafo(parrafo_id) ON DELETE CASCADE,
    FOREIGN KEY (cancion_id) REFERENCES cancion(cancion_id) ON DELETE CASCADE
);

CREATE TABLE insulto (insulto VARCHAR (255));

CREATE TABLE anuncio (
    id_anuncio INT NOT NULL AUTO_INCREMENT,
    link VARCHAR (255),
    correo VARCHAR (255),
    imagen VARCHAR (255),
    visitas INT NOT NULL,
    PRIMARY KEY (id_anuncio)
);

INSERT INTO
    cancion(titulo, artista, ruta_imagen)
VALUES
    (
        "Tusa",
        "Karol G Nicki Minaj",
        "vista/imagenes/1.jpeg"
    ),
    ("Malamente", "Rosalia", "vista/imagenes/2.jpeg"),
    ("Keii", "Anuel AA", "vista/imagenes/3.jpg"),
    ("Secreto", "Anuel AA", "vista/imagenes/4.jpg"),
    ("Amanece", "Anuel AA", "vista/imagenes/5.jpg");

INSERT INTO
    insulto (insulto)
VALUES
    ("Abadol"),
    ("Abejarruca"),
    ("Abejarruco"),
    ("Aberracion"),
    ("Aberración"),
    ("Aberrante"),
    ("Ablanda brevas"),
    ("Abollao"),
    ("Aborto"),
    ("Abrazafarolas"),
    ("Abrillantaglandes"),
    ("Abulto"),
    ("Adán"),
    ("Afilasables"),
    ("Aguafiestas"),
    ("Alacrán"),
    ("Alcachofo"),
    ("Alcornoke"),
    ("Alcornoque"),
    ("Alela"),
    ("Alelada"),
    ("Alelado"),
    ("Alelao"),
    ("Alfeñique"),
    ("Alicate"),
    ("Alimaña"),
    ("Almojonao"),
    ("Almorrana"),
    ("Alobao"),
    ("Alsarrabo"),
    ("Ambercocat"),
    ("Amochao"),
    ("Amorfo"),
    ("Anacoluto"),
    ("Analfabestia"),
    ("Animal de acequia"),
    ("Anormal"),
    ("Antancanciao"),
    ("Apollardao"),
    ("Apollardar"),
    ("Aragán"),
    ("Arracacho"),
    ("Arrastramantas"),
    ("Arrastrazapatillas"),
    ("Arreplegat"),
    ("Arrollapasto"),
    ("Artosopas"),
    ("Asalta asilos"),
    ("Asaltacunas"),
    ("Asaltapozos"),
    ("Ase assolellat"),
    ("Aspamao"),
    ("Asustatrenes"),
    ("Atonta"),
    ("Atontada"),
    ("Atontado"),
    ("Atontao"),
    ("Atroplella platos"),
    ("Baballo"),
    ("Babau"),
    ("Baboso"),
    ("Bacin"),
    ("Bacterio"),
    ("Badanas"),
    ("Bailabainas"),
    ("Bailaferias"),
    ("Bajoca"),
    ("Bambol"),
    ("Bandarra"),
    ("Barjaula"),
    ("Barriobajero"),
    ("Bastarda"),
    ("Bastardo"),
    ("Bebecharcos"),
    ("Bebesinsed"),
    ("Bellaco"),
    ("Bergante"),
    ("Berzotas"),
    ("Besugo"),
    ("Betzol"),
    ("Bigardo"),
    ("Bigotezorra"),
    ("Biruta"),
    ("Bleda"),
    ("Boba"),
    ("Bobo"),
    ("Bobolaverga"),
    ("Bobomierda"),
    ("Boborremoto"),
    ("Bocabuzón"),
    ("Bocachancla"),
    ("Bocachocho"),
    ("Bocafiemo"),
    ("Boiano"),
    ("Bolascombro"),
    ("Boludo"),
    ("Bordegàs"),
    ("Borinot"),
    ("Borracha"),
    ("Borracho"),
    ("Borrico"),
    ("Bosses tristes"),
    ("Bosuso"),
    ("Botabancals"),
    ("Boñiga"),
    ("Brasas"),
    ("Brincacepas"),
    ("Brètol"),
    ("Bufavidres"),
    ("Bujarra"),
    ("Bujarron"),
    ("Bujarrón"),
    ("Bulebule"),
    ("Burreras"),
    ("Burro de set soles"),
    ("Burxa orelles"),
    ("Busagre"),
    ("Buscabregues"),
    ("Butarut"),
    ("Butrill"),
    ("Buzefalo"),
    ("Cabestro"),
    ("Cabeza alberca"),
    ("Cabeza de chorlito"),
    ("Cabezabuque"),
    ("Cabezakiko"),
    ("Cabezalpaca"),
    ("Cabezantorcha"),
    ("Cabezarrucho"),
    ("Cabezon"),
    ("Cabezón"),
    ("Cabron"),
    ("Cabrona"),
    ("Cabronazo"),
    ("Cabrón"),
    ("Cacho mierda"),
    ("Cachomierda"),
    ("Cade de fava"),
    ("Cafre"),
    ("Caga bandurrias"),
    ("Cagablando"),
    ("Cagadubtes"),
    ("Cagaestacas"),
    ("Cagalindes"),
    ("Cagamandurries"),
    ("Cagamandúrries"),
    ("Caganio"),
    ("Cagapoc"),
    ("Cagaportales"),
    ("Cagarro"),
    ("Cagarruta"),
    ("Cagarrutas"),
    ("Caguiñas"),
    ("Caharrán"),
    ("Calamidad"),
    ("Calenturas"),
    ("Calvo"),
    ("Calzonazos"),
    ("Camanduleiro"),
    ("Camastron"),
    ("Canalla"),
    ("Candonga"),
    ("Cansa almas"),
    ("Cansaliebres"),
    ("Cansina"),
    ("Cansino"),
    ("Cantamañanas"),
    ("Cap d'ase"),
    ("Cap de fava"),
    ("Cap de polla"),
    ("Cap de ruc"),
    ("Cap de suro"),
    ("Capat mental"),
    ("Capdepesol"),
    ("Capdetrons"),
    ("Capillita"),
    ("Capsigrany"),
    ("Capsot"),
    ("Capulla"),
    ("Capullo"),
    ("Capuyo"),
    ("Cara de cona"),
    ("Carabassa"),
    ("Caracabello"),
    ("Caracandao"),
    ("Caracartón"),
    ("Carachancla"),
    ("Caracoño"),
    ("Caracul"),
    ("Caraculo"),
    ("Caraespatula"),
    ("Caraestaca"),
    ("Caraestufa"),
    ("Caraflema"),
    ("Carahogaza"),
    ("Carajaula"),
    ("Carajote"),
    ("Carallot"),
    ("Caramierda"),
    ("Caramirlo"),
    ("Caranabo"),
    ("Carantigua"),
    ("Carapan"),
    ("Carapapa"),
    ("Carapena"),
    ("Caraperro"),
    ("Carapolla"),
    ("Caraputa"),
    ("Carasapo"),
    ("Carasuela"),
    ("Caratapena"),
    ("Cardat del cap"),
    ("Carnuz"),
    ("Cascavalero"),
    ("Castroja"),
    ("Cateto"),
    ("Cavallot"),
    ("Caxomierda"),
    ("Cazurra"),
    ("Cazurro"),
    ("Cebollino"),
    ("Cenizo"),
    ("Cenutrio"),
    ("Ceporro"),
    ("Cercho"),
    ("Cercopiteco"),
    ("Cerillita"),
    ("Cero a la izquierda"),
    ("Chafacharcos"),
    ("Chafalotodo"),
    ("Chalada"),
    ("Chalado"),
    ("Chalao"),
    ("Chamba na cona"),
    ("Chanflameja"),
    ("Chavacana"),
    ("Chavacano"),
    ("Chavea"),
    ("Cheo de moscas"),
    ("Chichon"),
    ("Chimpa"),
    ("Chimpajosé"),
    ("Chimpamonas"),
    ("Chimpin"),
    ("Chingada"),
    ("Chorlito"),
    ("Chosco"),
    ("Chupacables"),
    ("Chupacharcos"),
    ("Chupaescrotos"),
    ("Chupamela"),
    ("Chupamingas"),
    ("Chupasangre"),
    ("Chupatintas"),
    ("Chupóptero"),
    ("Chusmón"),
    ("Cierrabares"),
    ("Ciervo"),
    ("Cimborrio"),
    ("Cipote"),
    ("Cobachero"),
    ("Cobarde"),
    ("Coentrao"),
    ("Coix de cervell"),
    ("Colla de feixistes"),
    ("Collo"),
    ("Collonera"),
    ("Comebolsas"),
    ("Comechapas"),
    ("Comemierda"),
    ("Comemierdas"),
    ("Comemocos"),
    ("Comepollas"),
    ("Comeprepucios"),
    ("Comerreglas"),
    ("Conacho"),
    ("Corgao"),
    ("Cornudo"),
    ("Correveidile"),
    ("Cretina"),
    ("Cretino"),
    ("Crollo"),
    ("Cuerdalpaca"),
    ("Cuerpoescombro"),
    ("Cui de caronge"),
    ("Culo panadera"),
    ("Culoalberca"),
    ("Culotrapo"),
    ("Curmaco"),
    ("Desaborio"),
    ("Descalzaputas"),
    ("Descastat"),
    ("Descerebrado"),
    ("Descosealpargatas"),
    ("Desgracia"),
    ("Desgraciada"),
    ("Desgraciado"),
    ("Desgraciao"),
    ("Despreciable"),
    ("Destiñe rubias"),
    ("Desvarata bailes"),
    ("Desvirgagallines"),
    ("Don nadie"),
    ("Donnadie"),
    ("Down"),
    ("Durdo"),
    ("Empaellao"),
    ("Empana"),
    ("Empanao"),
    ("Empujamierda"),
    ("En Garrovillas"),
    ("Enderezaplátanos"),
    ("Energumena"),
    ("Energumeno"),
    ("Energúmena"),
    ("Energúmeno"),
    ("Engaña baldosas"),
    ("Engendro"),
    ("Enjuto"),
    ("Ennortao"),
    ("Enrreda bailes"),
    ("Enze"),
    ("Escoria"),
    ("Escuerzo"),
    ("Escuincle"),
    ("Esgarramantas"),
    ("Esjarramantas"),
    ("Esmirriao"),
    ("Espantacriatures"),
    ("Espantajo"),
    ("Espanyaportes"),
    ("Esperpento"),
    ("Estas como un manojo de vergas"),
    ("Estorbo"),
    ("Estripa gasones"),
    ("Estupida"),
    ("Estupido"),
    ("Estòtil"),
    ("Estúpida"),
    ("Estúpido"),
    ("Eunuco"),
    ("Exelol"),
    ("Facha"),
    ("Facinerosa"),
    ("Facineroso"),
    ("Faino ti lanjran"),
    ("Falfañote"),
    ("Fanegas"),
    ("Fanequero"),
    ("Fanicerós"),
    ("Fantoche"),
    ("Farfoya"),
    ("Fariseo"),
    ("Farraguas"),
    ("Farsante"),
    ("Fato"),
    ("Fazañeiro"),
    ("Fea"),
    ("Feminazi"),
    ("Feo"),
    ("Feodoble"),
    ("Fervemasber"),
    ("Feto"),
    ("Figa tova"),
    ("Figa-molla"),
    ("Figaflor"),
    ("Figamustia"),
    ("Fill de monja"),
    ("Fitigote"),
    ("Follacabras"),
    ("Follagatos"),
    ("Follácaros"),
    ("Forrotimple"),
    ("Fune"),
    ("Funesto"),
    ("Futrul"),
    ("Gabacho"),
    ("Gallimarsot"),
    ("Galocho"),
    ("Gamarús"),
    ("Ganapán"),
    ("Gandul"),
    ("Gandula"),
    ("Gandúl"),
    ("Gansa"),
    ("Ganso"),
    ("Garibolo"),
    ("Garraibat"),
    ("Garroso"),
    ("Garrulo"),
    ("Gaznapiro"),
    ("Gañan"),
    ("Gañán"),
    ("Gili"),
    ("Gilicoño"),
    ("Gilipichi"),
    ("Gilipichis"),
    ("Gilipipas"),
    ("Gilipollas"),
    ("Gilipuerta"),
    ("Golismero"),
    ("Gonorrea"),
    ("Gordinflón"),
    ("Gordo"),
    ("Gorrino"),
    ("Gra de pus"),
    ("Granuja"),
    ("Grosera"),
    ("Grosero"),
    ("Guarnío"),
    ("Guarral"),
    ("Guarrilla"),
    ("Gumias"),
    ("Gurmaco"),
    ("Gusano"),
    ("Hartosopa"),
    ("Hartosopas"),
    ("Hdp"),
    ("Hijo d puta"),
    ("Hijo de"),
    ("Hijo de chacal"),
    ("Hijo de cura"),
    ("Hijo de hiena"),
    ("Hijo de obispo"),
    ("Hijueputa"),
    ("Hilh de gaudumela"),
    ("Horripilante"),
    ("Huelebragas"),
    ("Huevon"),
    ("Huevón"),
    ("Idiota"),
    ("Ignorante"),
    ("Imbecil"),
    ("Imbécil"),
    ("Impertinente"),
    ("Inculto"),
    ("Inelegante"),
    ("Infraser"),
    ("Innortao"),
    ("Inoperante"),
    ("Insulso"),
    ("Inutil"),
    ("Inútil"),
    ("Jartible"),
    ("Jodido"),
    ("Julai"),
    ("Lacazan"),
    ("Ladilla"),
    ("Lagumán"),
    ("Lamecharcos"),
    ("Lamecirios"),
    ("Lameculos"),
    ("Lamehuevos"),
    ("Lameplatos"),
    ("Lamerajas"),
    ("Lameñordos"),
    ("Langran"),
    ("Langrán"),
    ("Lapa"),
    ("Lareta"),
    ("Larry"),
    ("Lechuguino"),
    ("Lechuzo"),
    ("Lela"),
    ("Lelo"),
    ("Lento"),
    ("Lercho"),
    ("Lerda"),
    ("Lerdo"),
    ("Ligera de cascos"),
    ("Ligero de cascos"),
    ("Llepafils"),
    ("Llimpiatubos"),
    ("Lumia"),
    ("Machirulo"),
    ("Machorra"),
    ("Machote"),
    ("Machuno"),
    ("Maganto"),
    ("Mahara"),
    ("Mahareta"),
    ("Majadero"),
    ("Majarón"),
    ("Mal pelat"),
    ("Malafoya"),
    ("Malandra"),
    ("Malandrin"),
    ("Malasangre"),
    ("Maleduca"),
    ("Maleducada"),
    ("Maleducado"),
    ("Maleducao"),
    ("Malfollada"),
    ("Malnacida"),
    ("Malnacido"),
    ("Malparida"),
    ("Malparido"),
    ("Mamacallos"),
    ("Mamahostias"),
    ("Mamarracho"),
    ("Mameluco"),
    ("Mamon"),
    ("Mamona"),
    ("Mamporrero"),
    ("Mamón"),
    ("Mangarranas"),
    ("Mangurrian"),
    ("Mangurrián"),
    ("Manos Gachas"),
    ("Manos de arbol"),
    ("Mantecas"),
    ("Margarito"),
    ("Maricón"),
    ("Marimacho"),
    ("Mascachapas"),
    ("Mascaxapas"),
    ("Mastuerzo"),
    ("Masturbamulos"),
    ("Masturbaperros"),
    ("Masturbavacas"),
    ("Matao"),
    ("Mataperros"),
    ("Mazaroco"),
    ("Me cago en tu madre"),
    ("Me cago en tu padre"),
    ("Me cago en tu puta madre"),
    ("Me cago en tu puto padre"),
    ("Me cago en tus muertos"),
    ("Meapilas"),
    ("Media mierda"),
    ("Meketrefe"),
    ("Melindrós"),
    ("Melona"),
    ("Melón"),
    ("Mema"),
    ("Membrillo"),
    ("Memo"),
    ("Mendrugo"),
    ("Mentecato"),
    ("Mequetrefe"),
    ("Merda"),
    ("Merda d'oca"),
    ("Merda seca"),
    ("Merdaseca"),
    ("Merdellón"),
    ("Merluzo"),
    ("Meuca"),
    ("Microbi"),
    ("Mierda"),
    ("Mierdaseca"),
    ("Milhomes"),
    ("Mindundi"),
    ("Mitjamerda"),
    ("Modorro"),
    ("Mofeta"),
    ("Mojigato"),
    ("Monchi"),
    ("Mondongo"),
    ("Moniato"),
    ("Monigote de feria"),
    ("Monstrenco"),
    ("Monstruenco"),
    ("Monte de esterco"),
    ("Morlaco"),
    ("Morral"),
    ("Morroescopeta"),
    ("Morroesfinge"),
    ("Morroestufa"),
    ("Morrofiemo"),
    ("Morroperca"),
    ("Morroputa"),
    ("Morros de haba"),
    ("Muerdealmohadas"),
    ("Muggle"),
    ("Mugrosa"),
    ("Mugroso"),
    ("Napbuf"),
    ("Necia"),
    ("Necio"),
    ("Niñato"),
    ("Notas"),
    ("Nugallan"),
    ("Oligofrenico"),
    ("Oligofrénico"),
    ("Ollosdeboto"),
    ("Osobuco"),
    ("Otaco"),
    ("Otako"),
    ("Otaku"),
    ("Otakus"),
    ("Pachón"),
    ("Pagafantas"),
    ("Paiaso"),
    ("Pailán"),
    ("Pajera"),
    ("Pajero"),
    ("Palotrasto"),
    ("Palurda"),
    ("Palurdo"),
    ("Pambisita"),
    ("Pambisito"),
    ("Pamplinas"),
    ("Paneco"),
    ("Panfigol"),
    ("Panojas"),
    ("Panoli"),
    ("Panto"),
    ("Panzamelva"),
    ("Papafrita"),
    ("Papafritas"),
    ("Papagayo"),
    ("Papahostias"),
    ("Papamoscas"),
    ("Papanatas"),
    ("Papirote"),
    ("Paposo"),
    ("Papón"),
    ("Paquete"),
    ("Pardal"),
    ("Pardilla"),
    ("Pardillo"),
    ("Parguela"),
    ("Parguelas"),
    ("Paria"),
    ("Parvo"),
    ("Pasiego"),
    ("Pasmarote"),
    ("Paspan"),
    ("Paspon"),
    ("Paspán"),
    ("Paspón"),
    ("Passarell"),
    ("Pastanaga"),
    ("Patacrocker"),
    ("Pataliebre"),
    ("Patan"),
    ("Patasdealambre"),
    ("Patetica"),
    ("Patetico"),
    ("Patán"),
    ("Patética"),
    ("Patético"),
    ("Pavisosa"),
    ("Pavisoso"),
    ("Pavitonto"),
    ("Payasa"),
    ("Payaso"),
    ("Pazin"),
    ("Pec des collons"),
    ("Pecholata"),
    ("Pechopertiga"),
    ("Pechugona"),
    ("Peinaburras"),
    ("Peinaobejas"),
    ("Peinaovejas"),
    ("Peinapochas"),
    ("Pelabombillas"),
    ("Pelacantes"),
    ("Pelacañas"),
    ("Pelagatos"),
    ("Pelalimones"),
    ("Pelamangos"),
    ("Pelanas"),
    ("Pelandrusca"),
    ("Pelarrabos"),
    ("Pelele"),
    ("Pellizcacristales"),
    ("Pelma"),
    ("Pelmazo"),
    ("Pelo estropajo"),
    ("Pelotudo"),
    ("Pendejo"),
    ("Percebe"),
    ("Perepunyetes"),
    ("Perroflauta"),
    ("Personajullo"),
    ("Pescallunes"),
    ("Petimetre"),
    ("Picapleitos"),
    ("Pichabrava"),
    ("Pichacorta"),
    ("Pichónaco"),
    ("Piltrafas"),
    ("Piltrafillas"),
    ("Pimpoyo"),
    ("Pimpín"),
    ("Pinchacolillas"),
    ("Pinche"),
    ("Pinfloid"),
    ("Pintamonas"),
    ("Piojoso"),
    ("Pipa"),
    ("Pipilla"),
    ("Pipiolo"),
    ("Piripi"),
    ("Pisamostoh"),
    ("Pisapedales"),
    ("Pisaverde"),
    ("Pitañoso"),
    ("Pitufo"),
    ("Pixapins"),
    ("Pixatinters"),
    ("Pixorro"),
    ("Plasta"),
    ("Ploramiques"),
    ("Plumifero"),
    ("Poc suc"),
    ("Pocasluces"),
    ("Pocasolta"),
    ("Pollaboba"),
    ("Pollopera"),
    ("Pomot"),
    ("Popona"),
    ("Portugues"),
    ("Prea"),
    ("Pregonao"),
    ("Pringazorras"),
    ("Prosma"),
    ("Psifílico"),
    ("Pudrecolchones"),
    ("Pusilanime"),
    ("Pusilánime"),
    ("Puta"),
    ("Putapénico"),
    ("Putos"),
    ("Putot"),
    ("Pánfilo"),
    ("Pòtol"),
    ("Pófaro"),
    ("Rabo"),
    ("Rata"),
    ("Remenacacas"),
    ("Remendafoles"),
    ("Repelente"),
    ("Retarded"),
    ("Retrasado"),
    ("Retrasubnormal"),
    ("Retropetuda"),
    ("Robaperas"),
    ("Rucio"),
    ("Ruda"),
    ("Rudo"),
    ("Rufían"),
    ("Ruina"),
    ("Sabandija"),
    ("Saborio"),
    ("Saltacequias"),
    ("Saltinbanquis"),
    ("Samarugo"),
    ("Samugo"),
    ("Sandalio"),
    ("Sangonera"),
    ("Sangre sucia"),
    ("Sanguijuela"),
    ("Santurron"),
    ("Santurrona"),
    ("Santurrón"),
    ("Sarnoso"),
    ("Seboso"),
    ("Sietemesino"),
    ("Sinsorgo"),
    ("Sinsustancia"),
    ("Somugroso"),
    ("Somèr"),
    ("Soplagaitas"),
    ("Soplanucas"),
    ("Soplasartenes"),
    ("Sozagarro"),
    ("Subnormal"),
    ("Subnormala"),
    ("Subnormalo"),
    ("Subnorpollas"),
    ("Sunormal"),
    ("Tacaño"),
    ("Tap de suro"),
    ("Tapón de balsa"),
    ("Tarado"),
    ("Tarambana"),
    ("Tarantantan"),
    ("Taruga"),
    ("Tarugo"),
    ("Tarumba"),
    ("Tastaolletes"),
    ("Te huele la espalda a baron dandi"),
    ("Tita freda"),
    ("Titafluixa"),
    ("Titafreda"),
    ("Tocapelotas"),
    ("Tolai"),
    ("Tolete"),
    ("Tonta"),
    ("Tontaco"),
    ("Tonto"),
    ("Tonto dels collons"),
    ("Tontoculo"),
    ("Tontoelculo"),
    ("Tontol'lapiz"),
    ("Tontolaba"),
    ("Tontolava"),
    ("Tontolculo"),
    ("Tontolhaba"),
    ("Tontoligo"),
    ("Tontoloscojones"),
    ("Tontopolla"),
    ("Tontoprofundo"),
    ("Tontucio"),
    ("Torra collons"),
    ("Torracollons"),
    ("Totano"),
    ("Tragabaldas"),
    ("Tragaldabas"),
    ("Tragalefas"),
    ("Tragalpacas"),
    ("Trampuzas"),
    ("Trasto"),
    ("Trepa"),
    ("Tresnal"),
    ("Treznal"),
    ("Troglodita"),
    ("Trompellot"),
    ("Tronchobrezo"),
    ("Tronxamonas"),
    ("Tros d'ase"),
    ("Tros de cuoniem"),
    ("Tros de mula"),
    ("Tros de puta"),
    ("Tros de quòniam"),
    ("Tuercebotas"),
    ("Turco"),
    ("Tío plom"),
    ("Tòtil"),
    ("Vandalo"),
    ("Vendehumos"),
    ("Verga"),
    ("Vidroid"),
    ("Vigardo"),
    ("Votante del PP"),
    ("Vuelcalitros"),
    ("Vándalo"),
    ("Xafandino"),
    ("Xafarder"),
    ("Xafaxarcos"),
    ("Xarrupaescrots"),
    ("Xingaflautas"),
    ("Xisgarabis"),
    ("Xupaxarcos"),
    ("Yanflameja"),
    ("Yaro"),
    ("Yiyon"),
    ("Zaborrero"),
    ("Zafio"),
    ("Zalapastrán"),
    ("Zamacuco"),
    ("Zamarraco"),
    ("Zamarro"),
    ("Zambergo"),
    ("Zampabollos"),
    ("Zanahorio"),
    ("Zangano"),
    ("Zangüango"),
    ("Zangüángano"),
    ("Zarandajo"),
    ("Zarrapastrosa"),
    ("Zarrapastroso"),
    ("Zarrio"),
    ("Zascandil"),
    ("Zopenco"),
    ("Zoquete"),
    ("Zornicalo"),
    ("Zorra"),
    ("Zote"),
    ("Zumayo"),
    ("Zumbado"),
    ("Zumbao"),
    ("Zurcemierdas"),
    ("Zurmaco"),
    ("Zurremierdas"),
    ("Zángano");