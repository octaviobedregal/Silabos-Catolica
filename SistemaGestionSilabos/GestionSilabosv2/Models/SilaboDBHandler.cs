using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionSilabos.Models
{
    public class SilaboDBHandler
    {
        public List<SilaboModel> ListarSilabos()
        {
            List<SilaboModel> silabos = new List<SilaboModel>();
            using (SilabosDBContext context = new SilabosDBContext())
            {
                silabos = context.Silabo.ToList();
            }
            return silabos;
        }
    }
}