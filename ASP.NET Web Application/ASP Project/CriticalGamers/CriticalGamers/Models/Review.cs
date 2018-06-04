using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace CriticalGamers.Models
{
    public class Review
    {
        public int ReviewID { get; set; }

        [Required, StringLength(100), Display(Name = "Title")]
        public string Title { get; set; }

        [Display(Name = "Game")]
        public string Game { get; set; }

        [Display(Name = "Description")]
        public string Description { get; set; }

        [Display(Name = "Verdict")]
        public string Verdict { get; set; }

    }
}