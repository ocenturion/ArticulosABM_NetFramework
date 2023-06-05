<%@ Page Title="Articulos" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Articulos.aspx.cs" Inherits="ABMArticulos_NetFramework_Web.Formularios.Articulos.Articulos" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <%--boton agregar--%>
    <%--buscador--%>
    <%--tabla con articulos--%>

    <div class="container m-t-5">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-lg-11">
                                Articulos
                            </div>
                            <div class="col-lg-1 text-center">
                                <button id="btnAgregarArt" class="btn btn-xs btn-success btnAdd" data-toggle="tooltip" title="Agregar articulo">
                                    <i class="bi bi-plus-lg"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <input id="filter" type="text" class="form-control input-sm" placeholder="Buscar" />
                            </div>
                            <div class="col-lg-6"></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <table class="table" id="dt-articulos">
                                    <thead>
                                        <tr>
                                            <th>Descripcion</th>
                                            <th>Stock</th>
                                            <th>Fecha alta</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:PlaceHolder ID="phArticulos" runat="server"></asp:PlaceHolder>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="modalConfirmacion" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 class="modal-title">Eliminar articulo</h3>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <asp:HiddenField ID="hidenIdArt" runat="server"/>
                        <div class="col-md-12">
                            <h5>
                                <asp:Label runat="server" ID="lblMensaje" Text="Esta seguro que desea eliminar el articulo?"></asp:Label>
                            </h5>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button runat="server" ID="btnSi" Text="Eliminar" class="btn btn-danger" OnClick="btnSi_Click" />
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Cancelar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            document.getElementById('filter').focus()

            $('#dt-articulos').dataTable({
                "bLengthChange": false,
                "bFilter": true,
                "bInfo": false,
                "bPaginate": false,
                "language": {
                    "emptyTable": "No hay datos disponibles en la tabla"
                }
            });

            $('.dataTables_filter').hide();
            $('#filter').on('keyup', function () {
                $('#dt-articulos').DataTable().search(
                    this.value
                ).draw();
            });
        })
    </script>
    <script>
        function EditarArticulo(id) {
            window.location.href = "ArticulosABM.aspx?id=" + id
        }

        function EliminarArticulo(id) {
            document.getElementById('<%= hidenIdArt.ClientID %>').value = id
            $('#modalConfirmacion').modal('show')
        }
    </script>
    <script>
        document.getElementById('btnAgregarArt').addEventListener('click',(event) => {
            event.preventDefault()
            window.location.href = "ArticulosABM.aspx"
        })
    </script>
</asp:Content>
