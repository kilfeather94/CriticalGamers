using System.Data.Entity;
namespace CriticalGamers.Models
{
    public class GameContext : DbContext 
    { 
        public GameContext() : base("CriticalGamers") 
        {
        }
       
        public DbSet<TLOUGame> TLOUGame { get; set; }

        public DbSet<WDGame> WDGame { get; set; }

        public DbSet<DR3Game> DR3Game { get; set; }

        public DbSet<IFGame> IFGame { get; set;}

        public DbSet<MGSVGame> MGSVGame { get; set; }

        public DbSet<MordorGame> MordorGame { get; set; }

        public DbSet<TFGame> TFGame { get; set; }

        public DbSet<Profile> Profile { get; set; }

        public DbSet<Review> Review { get; set; }

        public DbSet<Platform> Platforms { get; set; }
        public DbSet<RetroGame> RetroGames { get; set; }


        
       


    
    }
}