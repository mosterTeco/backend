create database legendary;
use legendary;
drop database legendary;

select * from usuarios;
select * from autos;
select * from autos where Categoria='Motocicleta';

create table autos(Nombre varchar(30), Precio int unsigned, Categoria varchar(30), Existencias int unsigned, primary key(Nombre), imagen varchar(200));
create table usuarios (Nombre varchar(30), Apellidos varchar(40), Correo varchar(30), Pais varchar(30), Contrasena varchar(30),primary key(Correo));

create table autoCompra(NombreAuto varchar(30),
imgEstadisticas varchar(255), 
imgvisualizacion varchar(255),
Descripcion varchar(500),
Primary key(NombreAuto), 
foreign key (NombreAuto) references autos(Nombre));

#Tabla para ingresar las compras de lo usuarios
create table compras(NombreUsuario varchar(30),
NombreAuto varchar(30),
Color varchar(50) not null,
Precio varchar(100));

select * from autos;
drop table autoCompra;

insert into autos values ('Dewbauchee Vagner',1535000,'Auto',10,'src/Imagenes/Vagner.WEBP');
insert into autos values ('Grotti X80 Proto',2700000,'Auto',10,'src/Imagenes/Proto.WEBP');
insert into autos values ('Rapid FMJ',1750000,'Auto',10,'src/Imagenes/FMJ.WEBP');
insert into autos values ('Pegassi Zentorno',725000,'Auto',10,'src/Imagenes/Zentorno.WEBP');
insert into autos values ('Overflod Autarch',1955000,'Auto',10,'src/Imagenes/Autarch.WEBP');    
insert into autos values ('Devestre Eight',1795000,'Auto',10,'src/Imagenes/Devestre.WEBP');
insert into autos values ('Entity XF',477000,'Auto',10,'src/Imagenes/Entity.WEBP');
insert into autos values ('Pegassi Torero XO',2355000,'Auto',10,'src/Imagenes/ToreroXO.WEBP');
insert into autos values ('Grotti Itali GTO',2380000,'Auto',10,'src/Imagenes/ItaliGTO.WEBP');
insert into autos values ('Grotti Itali RSX',3465000,'Auto',10,'src/Imagenes/ItaliRSX.WEBP');
insert into autos values ('Oceliot Pariah',1420000,'Auto',10,'src/Imagenes/Pariah.WEBP');
insert into autos values ('Ocelot Virtue',2980000,'Auto',10,'src/Imagenes/Virtue.WEBP');
/* INSERCIÓN DE DATOS PARA MOTOCICLETAS*/
insert into autos values ('Oppressor MK2', 8000000,'Motocicleta', 10,'src/Imagenes/OppressorMk2.WEBP');
insert into autos values ('Oppresor',2750000,'Motocicleta',10,'src/Imagenes/Oppressor.WEBP');
insert into autos values ('Powersurge',1605000,'Motocicleta',10,'src/Imagenes/Powersurge.WEBP');
insert into autos values ('Shotaro',2225000,'Motocicleta',10,'src/Imagenes/Shotaro.WEBP');
insert into autos values ('Reever',1900000,'Motocicleta',10,'src/Imagenes/Reever.WEBP');
insert into autos values ('Shinobi',2480500,'Motocicleta',10,'src/Imagenes/Shinobi.WEBP');
insert into autos values ('Lectro',997500,'Motocicleta',10,'src/Imagenes/Lectro.WEBP');
insert into autos values ('CarbonRS',40000,'Motocicleta',10,'src/Imagenes/Carbonrs.WEBP');
insert into autos values ('Vindicator',630000,'Motocicleta',10,'src/Imagenes/Vindicator.WEBP');

#Inserción de imagenes y descripcion para la pantalla de compra de autos
insert into autoCompra values ('Devestre Eight','src/Imagenes/estadisticasDevestre.WEBP','src/Imagenes/visualizaciónDevestre.webp','It began as little more than a myth: a list of impossible statistics circulating on the dark net. Then the myth became a legend: a few leaked photographs so provocative that possession was a federal crime.Then the legend became a rumor: a car so exclusive no one could confirm it existed in the real world.And now, thanks to you, that rumor is about to become a very messy headline.');
insert into autoCompra values ('Grotti X80 Proto','src/Imagenes/Estadisticas_X80Proto.WEBP','src/Imagenes/visualizacionX80Proto.WEBP',"The cause of more UFO sightings across San Andreas than any other production vehicle of the decade, the Proto is the kind of concept car you get when your head of R&D is an 8 year old child with a stack of comics and a bowlful of MDMA. The future is here.");
insert into autoCompra values ('Rapid FMJ','src/Imagenes/Estadisticas_RapidFMJ.WEBP','src/Imagenes/visualizacionRapidFMJ.WEBP',"As the rate of infant heart disease suggests, the power to weight ratio has never been America's strong suit - until now. With the FMJ, Vapid put the American supercar on a raw food diet and gave it colonic irrigation. The result? With the same primal engine under bodywork that's 90% carbon fiber and 10% patriotic sentiment, this thing will go 0 to 60 on the back of nothing more than a light sneeze.");
insert into autoCompra values ('Pegassi Zentorno','src/Imagenes/Estadisticas_Zentorno.WEBP','src/Imagenes/visualizacionPegassiZentorno.WEBP',"Make sure the other 99% know you're in a vehicle they can't afford with this loud, brash, in-your-face supercar from Pegassi. Insanely fast with a high-tech interior, this is as close as you can get to a fighter jet on wheels. The only thing that goes up quicker than the 0-60 on this bad boy is your insurance premium.");
insert into autoCompra values ('Overflod Autarch','src/Imagenes/Estadisticas_Autarch.WEBP','src/Imagenes/visualizacionOverflodAutarch.WEBP','This is not a hypercar. Its not a sports prototype or a concept GT. Its something else. Something much, much better. And this isnt even an advert for whatever it is. The Autarch doesnt need an advert. It doesnt need anything it doesnt have already, least of all the approval of an irrelevance like you. No, you need it: more than you need money, dignity or life itself. Go on, we dare you not to buy it.');
insert into autoCompra values ('Dewbauchee Vagner','src/Imagenes/Estadisticas_Vagner.WEBP','src/Imagenes/visualizacionDewbaucheeVagner.WEBP',"This is what you get when you start from a truly blank slate. Take every preconception you had about hypercar design: every piece of received wisdom, every rock-solid assumption, every tried and tested formula - take them all and dump a hot, steaming pile of filthy ingenuity all over them. The Vagner is a message from the future: you're late.");
insert into autoCompra values ('Entity XF','src/Imagenes/Estadisticas_EntityXF.WEBP','src/Imagenes/visualizacionEntiryXF.WEBP',"High taxes, socialism, constant darkness… Sweden really is proof that, if you fill a country full of hot women, people will put up with a wretched landscape. By pussying out of armed conflicts for the past 200 years and focusing instead on investment in education, healthcare and manufacturing, the Swedes now enjoy one of the highest standards of living in the world. The result is a nation that's terrible at democracy but excellent at making ridiculously fast sportscars.");
insert into autoCompra values ('Pegassi Torero XO','src/Imagenes/Estadisticas_Torero.WEBP','src/Imagenes/visualizacionPegassiToreroXO.WEBP',"The Pegassi Torero gave you old-school pornstar heat. The XO is something altogether more glamorous. With its powerful angles, edgy lines and ecstatic propulsion, this is the kind of A-Lister who'll break the box office, start a fashion line, squeeze in a developing world photo op, finish up with a full spread in Pussycat Magazine — and stay classy every step of the way.");
insert into autoCompra values ('Grotti Itali GTO','src/Imagenes/Estadisticas_ItaliGTO.WEBP','src/Imagenes/visualizacionGrottiItaliGTO.WEBP',"The Stinger TT is so overwhelmingly sensuous, tactile, and powerful, your first instinct might be to swipe right on the nearest hottie, get them in the passenger seat and let your horsepower do the talking. But now they're thumbing the controls, patting that plush premium leather, and asking to change the radio. And that's when it hits you: your days of swiping right are over. This is the only relationship you'll ever need. And as for your third wheel: time to break out the slick mines.");
insert into autoCompra values ('Grotti Itali RSX','src/Imagenes/Estadisticas_ItaliRSX.WEBP','src/Imagenes/visualizacionGrottiItaliRSX.WEBP','Warning: NSFW. Theres a sexy single car in your area looking for a ride. Interested? Just open a private tab and check out these candid pics of the RSXs sultry bodywork, hourglass waist, soft front, and silken A-line. But before you take it to the next level and see whats under the hood, turn off your webcam and mute your mic. The conference call youre ignoring is about to see your o-face.');
insert into autoCompra values ('Oceliot Pariah','src/Imagenes/Estadisticas_Pariah.WEBP','src/Imagenes/visualizacionPariah.WEBP','This is not an accessible sports car. It wont rub its avant-garde bodywork in your face and let you grope its dashboard on the first drive. Its dignified, sophisticated - even a little aloof. It will only reveal its charms for just the right handler. But one day, after years of practice, youll become aware of the utter contempt in which you now hold the rest of the human race, and youll know you can finally say "I drive a Pariah.');
insert into autoCompra values ('Ocelot Virtue','src/Imagenes/Estadisticas_Virtue.WEBP','src/Imagenes/visualizacionOcelotVirtue.WEBP',"Meet the all-electric hypercar that comes track-steady and city ready, so you can show-off your climate awareness and your tax exile status from behind the same wheel. And if you get tired of know-it-alls pointing out the contradiction, simply equip it with some serious clap-backable accessories. Missile Lock-On Jammer, Remote Control Unit, Slick Mines and Armor Plating should bring a swift resolution to any debate.");

#Insercion de imagenes y descripcion para las motos
insert into autoCompra values ('Oppressor MK2','src/Imagenes/Estadisticas_OppresorMK2.WEBP','src/Imagenes/visualizacionOppressorMkII.WEBP',"The Oppressor Mk I was a landmark in hybrid vehicle design. Well, the Mk II takes off where its little brother landed - and it never comes down. This is about the closest you can get to throwing a saddle on a rocket engine, bolting on some optional heavy artillery, and pressing the big red button.");
insert into autoCompra values ('Oppresor','src/Imagenes/Estadisticas_Oppresor.WEBP','src/Imagenes/visualizacionOppressorMK1.WEBP',"There are two kinds of people in the point one percent. There's the balding stock analyst with pituitary issues, staring out the window of his comfortable private jet on the approach into LSIA. And there's the guy mooning him as he screams past on a rocket-powered hyperbike with extendable wings and a front-mounted machine gun. The only question is, which side of the glass do you want to be on?");
insert into autoCompra values ('Powersurge','src/Imagenes/Estadisticas_Powersurge.WEBP','src/Imagenes/visualizacionPowersurge.WEBP',"In the market for a toe-curling ride? Introducing the Western Powersurge, an all-electric plaything for the climate-curious biker. Yes, dumping out carbon is a thing of the past. Yes, the permanent-magnet motor brings torque to an instant climax. And yes, everyone deserves a little electro-erotic stimulation between the thighs.");
insert into autoCompra values ('Shotaro','src/Imagenes/Estadisticas_Shotaro.WEBP','src/Imagenes/visualizacionShotaro.WEBP',"Nagasaki's spaceflight division is responsible for some of the most stylish and combustible designs ever to crash into the Atlantic. So when the same team put together a motorcycle prototype, you can be sure it'll break rules, skulls and bank accounts from the minute it goes on sale.");
insert into autoCompra values ('Reever','src/Imagenes/Estadisticas_Reever.WEBP','src/Imagenes/visualizacionReever.WEBP',"This is it. The very pinnacle of human ingenuity. Centuries of innovation, strides in engineering, architecture, and masturbation, have all come together for the Reever, the power cruiser with a race engine designed to work just as well on the road as your crotch.");
insert into autoCompra values ('Shinobi','src/Imagenes/Estadisticas_Shinobi.WEBP','src/Imagenes/visualizacionShinobi.WEBP',"The latest from the two-wheel powerhouse Nagasaki. With force like this, all you need to worry about is an overactive wet sump lubrication system. The bike will be fine.");
insert into autoCompra values ('Lectro','src/Imagenes/Estadisticas_Lectro.WEBP','src/Imagenes/visualizacionLectro.WEBP',"The aggressive styling and hyper tuned engine make this a bike that's ready for a fight. Most likely it'll be fighting the back of a truck or a highway barrier, but that'll be down to you.
Features KERS Kinetic energy recovery system, which uses the bike's axle power to generate energy for the hyper cell battery. This power can be delivered to the back wheel via a direct drive brushless motor, giving the bike a hi torque speed boost.");
insert into autoCompra values ('CarbonRS','src/Imagenes/Estadisticas_CarboNRS.WEBP','src/Imagenes/visualizacionCarbonRS.WEBP',"This superbike from Nagasaki is extra lightweight because of its carbon body, resulting in a very fine line between 'joy to drive' and 'infernal deathtrap'. It's a line worth treading.");
insert into autoCompra values ('Vindicator','src/Imagenes/Estadisticas_Vindicator.WEBP','src/Imagenes/visualizacionVindicator.WEBP',"Bold and futuristic when you first saw these feet forwards motorcycles in 80s anime, this is as close as you'll get to commuting in a retro movie prop. Carbon fiber bodywork, pointless LED displays, stealth bomber styling: very few people are vain and wealthy enough to invest this much money in cosplay. Just make sure you're one of them.");

#Pruebas de insercion para las compras de los usuarios
insert into compras values ('angnusa11@gmail.com','Pegassi Zentorno','Verde','7250000.00');

delete from autos where nombre="Turismo";

truncate table compras;

drop table compras;


select * from compras;

