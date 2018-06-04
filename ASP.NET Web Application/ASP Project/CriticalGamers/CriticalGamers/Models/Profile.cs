using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace CriticalGamers.Models
{
    public class Profile
    {
        public int ProfileID { get; set; }

        [Required, StringLength(100), Display(Name = "FullName")]
        public string FullName { get; set; }

        [Display(Name = "Age")]
        public string Age { get; set; }

        [Display(Name = "Nationality")]
        public string Nationality { get; set; }

        [Display(Name = "Favourite_Platforms")]
        public string FavePlatform { get; set; }

        [Display(Name = "Favourite_Games")]
        public string FaveGame { get; set; }

        [Required, StringLength(10000), Display(Name = "About_Me"),
        DataType(DataType.MultilineText)]
        public string AboutMe { get; set; }



    }
}