using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ABMArticulos_NetFramework_API.Modelo
{
    public class Articulo
    {
        public int id { get; set; }
        public string descripcion { get; set; }
        public float stock { get; set; }
        public DateTime fechaAlta { get; set; }
        public int estado { get; set; }
    }
}
