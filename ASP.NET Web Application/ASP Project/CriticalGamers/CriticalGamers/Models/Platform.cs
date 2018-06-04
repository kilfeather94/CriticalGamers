using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace CriticalGamers.Models
{
    public class Platform
    {
        [ScaffoldColumn(false)]
        public int PlatformID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string PlatformName { get; set; }

        [Display(Name = "Summary")]
        public string Summary { get; set; }

        public virtual ICollection<RetroGame> RetroGames { get; set; }
    }
}