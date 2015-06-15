


<div ng-controller="TestCtrl">

    <g:uploadForm controller="route" action="createRoute">
        <div class="row">
            <div class="form-group move-down col-lg-5">
                <label for="Autocomplete">Origen</label>
                <g:textField name="origin" type="text" id="Autocomplete" class="form-control" ng-autocomplete="result3" details="details3" options="options3"></g:textField>
            </div>
            <div class="form-group move-down col-lg-5">
                <label for="Autocomplete">Destino</label>
                <g:textField name="end" type="text" id="Autocomplete" class="form-control" ng-autocomplete="result3" details="details3" options="options3"/>
            </div>
            <div class="col-lg-2">
                <label for="Autocomplete">Puestos</label>
                <g:field name="sits" type="number" class="form-control" placeholder="Puestos"/>
            </div>
            
        </div>
        <div class="row">
            <div class="col-lg-8">
                <label for="Autocomplete">Desripcion de la ruta</label>
                <g:textField name="description" class="form-control"></g:textField>
            </div>
            <div class="col-lg-2">
                <label for="Autocomplete">Tiempo estimado</label>
                <g:field name="meanTime" type="number" class="form-control" placeholder="Tiempo"/>
            </div>
            <div class="col-lg-2">
                <label for="Autocomplete">Tiempo estimado</label>
                <g:datePicker name="endDate" value="${new Date()}" precision="minute" ></g:datePicker>
            </div>
        </div>
        </br>

        <div class="row ">
            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 btn-block">
                <g:submitButton name="Ok" type="submit" value="Guardar" class="btn btn-lg btn-success btn-block" ></g:submitButton>
            </div>
        </div>


    </g:uploadForm>

</div>