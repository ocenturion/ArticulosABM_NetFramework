using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ABMArticulos_NetFramework_API.Modelo
{
    public class Articulo_Stock
    {
        public int id { get; set; }
        public int idArticulo { get; set; }
        public long stock { get; set; }
        public int estado { get; set; }
    }
}
