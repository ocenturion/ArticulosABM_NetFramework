using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace ABMArticulos_NetFramework_Test
{
    [TestClass]
    public class TestControladorArticulos
    {
        [TestMethod]
        public void InsertArticulo_DeberiaInsertarNuevoArticulo()
        {
            // Arrange
            var articuloService = new ABMArticulos_NetFramework_API.Controladores.ControladorArticulos();
            var descripcion = "Descripción del artículo";

            // Act
            var id = articuloService.InsertArticulo(descripcion);

            // Assert
            Assert.IsTrue(id > 0);
        }
    }
}
