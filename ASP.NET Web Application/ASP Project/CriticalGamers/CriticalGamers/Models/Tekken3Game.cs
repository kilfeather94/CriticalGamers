using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using System.ComponentModel.DataAnnotations;

namespace CriticalGamers.Models
{
    public class Tekken3Game
    {
        public int Tekken3GameID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string GameName { get; set; }


        [Required, StringLength(10000), Display(Name = "Summary"),
        DataType(DataType.MultilineText)]
        public string Summary { get; set; }

        public string ImagePath { get; set; }

        [Display(Name = "Publisher")]
        public string Publisher { get; set; }

        [Display(Name = "Developer")]
        public string Developer { get; set; }

        [Display(Name = "Release_Date")]
        public string Release_Date { get; set; }

        [Display(Name = "Also_On")]
        public string Also_On { get; set; }

        [Display(Name = "Rating")]
        public string Rating { get; set; }
    }
}