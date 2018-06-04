
using System.Collections.Generic;
using System.Data.Entity;

namespace CriticalGamers.Models
{
    public class GameDatabaseInitializer : DropCreateDatabaseAlways<GameContext>

        
    {
        protected override void Seed(GameContext context)
        {
            GetTLOUGame().ForEach(t => context.TLOUGame.Add(t));
            GetWDGame().ForEach(w => context.WDGame.Add(w));
            GetIFGame().ForEach(i => context.IFGame.Add(i));
            GetMGSVGame().ForEach(m => context.MGSVGame.Add(m));
            GetTFGame().ForEach(t => context.TFGame.Add(t));
            GetMordorGame().ForEach(m => context.MordorGame.Add(m));
            GetDR3Game().ForEach(d => context.DR3Game.Add(d));
            GetProfile().ForEach(p => context.Profile.Add(p));
            GetReview().ForEach(r => context.Review.Add(r));
            GetPlatforms().ForEach(p => context.Platforms.Add(p));
            GetRetroGames().ForEach(r => context.RetroGames.Add(r));
          
        }

       

        private static List<TLOUGame> GetTLOUGame()
        {
            var tlougame = new List<TLOUGame> {
                new TLOUGame
                 {
                    TLOUGameID = 1,
                    GameName = "The Last of Us Remastered",
                    Summary = " The Last of Us has been rebuilt for the PlayStation 4 system. Now featuring full 1080p, higher resolution character models, improved shadows and lighting, in addition to several other gameplay improvements. 20 years after a pandemic has radically changed known civilization, infected humans run wild and survivors are killing each other for food, weapons; whatever they can get their hands on. Joel, a violent survivor, is hired to smuggle a 14 year-old girl, Ellie, out of an oppressive military quarantine zone, but what starts as a small job soon transforms into a brutal journey across the U.S. The Last of Us Remastered includes the Abandoned Territories Map Pack, Reclaimed Territories Map Pack, and the critically acclaimed The Last of Us: Left Behind Single Player campaign that combines themes of survival, loyalty, and love with tense, survival-action gameplay.",
                    ImagePath ="tlou.png",
                    Publisher ="Sony Computer Entertainment",
                    Developer ="Naughty Dog",
                    Release_Date="July 29, 2014",
                    Also_On="PS3 (Original Release)",
                    Rating ="10/10"
                    
                 }
            };
            return tlougame;

        }

       
       

        private static List<MGSVGame> GetMGSVGame()
        {
            var mgsvgame = new List<MGSVGame> {
                new MGSVGame
                 {
                    MGSVGameID = 1,
                    GameName = "Metal Gear Solid V: Ground Zeroes",
                     Summary = "Ground Zeroes showcases Kojima Productions' FOX Engine, a true next-generation game engine which promises to revolutionize the Metal Gear Solid experience. The first Metal Gear Solid title to offer open world gameplay. Ground Zeroes offers total freedom of play: how missions are undertaken is entirely down to the user. Unrestricted stealth: Imagine classic Metal Gear gameplay but with no restrictions or boundaries. Players use intelligence and cerebral strategy to sneak their way through entire missions, or go in all guns blazing. Each will have different effects on game consequences and advancement. Multiple missions and tasks - Ground Zeroes boasts a central story mode and Side-Ops missions ranging from tactical action, aerial assaults and covert missions that will be sure to surprise. Ground Zeroes users will benefit from a clean in-game HUD that shows the minimal amount of on-screen data to give a more intense gaming experience.",
                     ImagePath ="mgsv.png",
                     Publisher ="Konami",
                     Developer ="Kojima Productions",
                     Release_Date="March 18, 2014",
                     Also_On="PC, PlayStation 3, Xbox 360, Xbox One, PS4",
                     Rating ="8.8/10"
                    
                 }
            };
            return mgsvgame;

        }

        private static List<IFGame> GetIFGame()
        {
            var ifgame = new List<IFGame> {
                new IFGame
                 {
                    IFGameID = 1,
                     GameName = "inFamous: Second Son",
                     Summary = " inFAMOUS Second Son is an action adventure game in which, surrounded by a society that fears them, superhumans are ruthlessly hunted down and caged by the Department of Unified Protection. Step into a locked-down Seattle as Delsin Rowe, who has recently discovered his superhuman power and is now capable of fighting back against the oppressive DUP. Enjoy your power as you choose how you will push your awesome abilities to the limit and witness the consequences of your actions as they affect the city and people around you.",
                     ImagePath ="infamous.jpg",
                     Publisher ="Sony Computer Entertainment America",
                     Developer ="Sucker Punch Productions",
                     Release_Date="March 21, 2014",
                     Also_On="PS4 Exclusive",
                     Rating ="8.4/10"
                    
                 }
            };
            return ifgame;

        }

        private static List<TFGame> GetTFGame()
        {
            var tfgame = new List<TFGame> {
                new TFGame
                 {
                    TFGameID = 1,
                     GameName = "Titanfall",
                    Summary = "Crafted by one of the co-creators of Call of Duty and other key developers behind the Call of Duty franchise, Titanfall, with its advanced combat techniques, gives you the freedom to fight your way as both elite assault Pilot and fast, heavily armored Titan. The experience combines fast-paced multiplayer action with the dramatically charged moments of a cinematic universe.",
                    ImagePath ="titanfall.jpg",
                    Publisher ="Electronic Arts",
                    Developer ="Respawn Entertainment",
                    Release_Date="March 11, 2014",
                    Also_On="PC, Xbox 360",
                    Rating="8.5/10"
                    
                 }
            };
            return tfgame;

        }

        private static List<DR3Game> GetDR3Game()
        {
            var dr3game = new List<DR3Game> {
                new DR3Game
                 {
                    DR3GameID = 1,
                    GameName = "Dead Rising 3",
                    Summary = "Available on Xbox One and PC, Dead Rising 3 is set ten years following the events of Fortune City in Dead Rising 2. Players are introduced to Nick Ramos, a young mechanic with a bizarre tattoo and an mysterious past, who has to find a way to escape a city full of zombies before a coming military strike wipes the city of Los Perdidos, California, and everyone in it, off the face of the Earth. Nick cannot do it on his own – he must hook up with other survivors to stay alive. They've got to fight their way out before it’s too late.",
                    ImagePath ="dr3.jpg",
                    Publisher ="Capcom, Microsoft Studios",
                    Developer ="Capcom Vancouver",
                    Release_Date="November 22, 2013",
                    Also_On="PC",
                    Rating ="7.5/10"
                    
                 }
            };
            return dr3game;

        }

        private static List<Profile> GetProfile()
        {
            var profile = new List<Profile> {
                new Profile
                 {
                    ProfileID = 1,
                    FullName = "Enter name",
                    Age = "Enter age",
                    Nationality ="Enter nationality",
                    FavePlatform ="Enter platforms",
                    FaveGame ="Enter games",
                    AboutMe ="Enter info about yourself",
                   
                 }
            };
            return profile;

        }

        private static List<Review> GetReview()
        {
            var review = new List<Review> {
                new Review
                 {
                    ReviewID = 1,
                    Title = "Enter Title",
                    Game = "Enter Game",
                    Description ="Enter Description",
                    Verdict ="Enter Verdict",
                    
                 }
            };
            return review;

        }

        private static List<Platform> GetPlatforms()
        {
            var platforms = new List<Platform> {
                new Platform
                 {
                    PlatformID = 1,
                   PlatformName = "PS1"
                    
                 },
                  new Platform
                 {
                    PlatformID = 2,
                   PlatformName = "Dreamcast"
                    
                 },
                   new Platform
                 {
                    PlatformID = 3,
                   PlatformName = "N64"
                    
                 },
            };
            return platforms;

        }


        private static List<RetroGame> GetRetroGames()
        {
            var retrogames = new List<RetroGame> {
                new RetroGame
                 {
                    RetroGameID = 1,
                    GameName = "Tekken 3",
                    Summary = "An ancient evil force has reawakened, attacking in secret and feeding on the souls of mighty warriors. To lure it out of hiding will take the greatest fighting contest the world has ever seen...Tekken 3. Some are fighting for revenge, some for honor, Ultimately, all are fighting for their lives and the fate of all mankind.",
                    ImagePath ="tekken3.jpg",
                    Publisher ="Namco",
                    Developer ="Namco",
                    Release_Date="September 12, 1998 (PS1)",
                    Also_On="Arcade (Original Release)",
                    Rating ="9.9/10"
                    
                 },
                 new RetroGame
                 {
                     RetroGameID = 2,
                   GameName = "Metal Gear Solid",
                     Summary = " You are Snake, a government agent on a mission to regain control of a secret nuclear weapons base from terrorist hands. Lightly armed and facing an army of foes, Snake must avoid firefights in order to survive. If Snake can locate them he can utilize advanced hardware, ranging from silenced pistols to ground-to-air missiles. Enemies react to sight and sound - so stay quiet and stay in the shadows. State-of-the-art graphics: textures, transparencies, models and explosions. Taut, gripping story with multiple endings - a truly cinematic experience.",
                     ImagePath ="mgs1.jpg",
                     Publisher ="Konami",
                     Developer ="Konami Computer Entertainment Japan (KCEJ)",
                     Release_Date="September 3, 1998",
                     Also_On="PC, Playstation Network (Digital Download)",
                     Rating ="9.4/10"
                    
                 },
                 new RetroGame
                 {
                     RetroGameID = 3,
                   GameName = "Shenmue 2",
                     Summary = "Seeking answers and vengeance, Ryo Hazuki arrives in the bustling metropolis of Hong Kong. Encountering new friends and foes alike, Ryo realizes he has much to learn and must master new martial art skills to prepare himself for his ultimate showdown with Lan Di, the man who killed his father. Each day brings Ryo closer to his goal of avenging his father's death and unlocking the mysteries of the Phoenix Mirror.",
                     ImagePath ="shenmue2.jpg",
                     Publisher ="SEGA, Microsoft Studios (Xbox)",
                     Developer ="Sega AM2",
                     Release_Date="November 23, 2001 (Dreamcast), March 21, 2003 (Xbox)",
                     Also_On="Xbox",
                     Rating ="9.5/10"
                    
                 },
                  new RetroGame
                 {
                     RetroGameID = 4,
                   GameName = "Street Fighter 3: Third Strike",
                     Summary = "This amazing fighter stars 18 brawlers from the STREET FIGHTER III universe and introduces the new Leap Attack. Plus, a new Grade Judge system evaluates player performance at the end of each match. Huge characters and an innovative Hit-Frame system team up with the return of the Super Arts Fighting Styles. Experience totally seamless animation in the newest chapter of the greatest arcade series ever!",
                     ImagePath ="sf3.jpg",
                     Publisher ="Capcom",
                     Developer ="Capcom",
                     Release_Date="October 4th, 2000",
                     Also_On="Arcade, PS2, Xbox, PSN, XBLA",
                     Rating ="9.0/10"
                    
                 },
                  new RetroGame
                 {
                     RetroGameID = 5,
                   GameName = "Mortal Kombat Trilogy",
                     Summary = "Shao Kahn's final attempt to control the earth is upon us...You have no choice. Defeat Kahn's deadly Warriors or die trying.",
                     ImagePath ="mkt.jpg",
                     Publisher ="Williams Entertainment",
                     Developer ="Avalanche Software (PS1), Midway Games (N64)",
                     Release_Date="December 6, 1996 (PS1), March 14, 1997 (N64)",
                     Also_On="N64, PC, Sega Saturn",
                     Rating ="7.7/10"
                    
                 },
                 new RetroGame
                 {
                     RetroGameID = 6,
                   GameName = "Star Fox 64 (Lylat Wars)",
                     Summary = "The Lylat system has been invaded! Join Fox McCloud and his Star Fox team as they fight to save the galaxy from the clutches of the evil Andross. Travel to many different 3-D worlds. Battle the enemy in the air and on the ground and listen in as Fox McCloud interacts with a cast of characters.",
                     ImagePath ="sf64.jpg",
                     Publisher ="Nintendo",
                     Developer ="Nintendo EAD",
                     Release_Date="October 20, 1997",
                     Also_On="Nintendo 3DS",
                     Rating ="7.7/10"
                    
                 }


            };
            return retrogames;

        }




        private static List<MordorGame> GetMordorGame()
        {
            var mordorgame = new List<MordorGame> {
                new MordorGame
                 {
                    MordorGameID = 1,
                    GameName = "Middle-earth: Shadow of Mordor",
                    Summary = "Fight your way through Mordor and reveal the truth of the spirit that compels you, discover the origins of the Rings of Power, build your legend and ultimately confront the evil of Sauron in this new story of Middle-earth. Middle-earth: Shadow of Mordor is an open world video game, where the player controls a Ranger by the name of Talion who has wraith-like abilities. Besides the main quest, the player has the freedom to pursue side quests and roam around the world. The game allows people to create new characters and customize Talion as he starts his journey through Middle-earth by using the Nemesis System, which remembers the player's interactions with specific types of characters they encounter and adjusts the manner in which these characters react to the player throughout the game. Enemies also develop as Talion interacts with them; for example, an Uruk who was thrown into a fire by Talion might want revenge on him for being burned and disfigured.",
                    ImagePath ="somcover.jpg",
                    Publisher ="Warner Bros. Interactive Entertainment",
                    Developer ="Monolith Productions",
                    Release_Date="September 30, 2014",
                    Also_On="PC, Xbox 360, PS3, PS4",
                    Rating ="9.5/10"
                    
                 }
            };
            return mordorgame;

        }

        private static List<WDGame> GetWDGame()
        {
            var wdgame = new List<WDGame> {
                new WDGame
                 {
                    WDGameID = 1,
                    GameName = "Watch Dogs",
                    Summary = "In the modern uber-connected world, Chicago maintains the nation's most advanced and integrated computer system – one which controls almost every facet of city technology and maintains critical information on all of the city's residents. Assume the role of Aiden Pearce, a notorious hacker and former thug, whose criminal history lead to a violent family tragedy. Now on the hunt for those people who have hurt your family, you will be able to monitor and hack all who surround you while manipulating the city's systems to stop traffic lights, download personal and private information, manipulate the electrical grid and more. Use the entire city of Chicago as your personal weapon and exact your signature brand of revenge.",
                    ImagePath ="watchdogs.jpg",
                    Publisher ="Ubisoft",
                    Developer ="Ubisoft Montreal",
                    Release_Date="May 27th, 2014",
                    Also_On="PS4, Xbox One, PC, PS3, Xbox 360, Wii U",
                    Rating ="8.7/10"
                    
                 }

            };
            return wdgame;

        }

       

        }


    }



    