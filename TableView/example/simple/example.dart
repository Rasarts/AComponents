import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:table_view/components.dart';

@Component(
    selector: 'table-view-simple-example',
    template: """
      {{columns}}
      <br>
      {{rows}}
      <br>
      <material-checkbox
          [(checked)]="columns.first['hidden']"
          label="Is Row Id column must be hidden?">
      </material-checkbox>
      
      <table-view [columns]='columns' [rows]='rows'></table-view>
    """,
    directives: const [TableView, materialDirectives],
    providers: const [materialProviders])
class TableViewSimpleExample {
  List<Map<String, dynamic>> columns = <Map<String, dynamic>>[
    {
      "id": 0,
      "name": "Row Id",
      "field": "id",
      "sortable": true,
      "sort": "asc",
      "hidden": false,
      "filterable": true,
      "type": 'int',
      "filter": 2
    },
    {
      "id": 01,
      "name": "First column",
      "field": "firstColumn",
      "sortable": true,
      "filterable": true,
      "type": 'String',
      "filter": "b first"
    },
    {
      "id": 02,
      "name": "Second column",
      "field": "secondColumn",
    },
    {"id": 03, "name": "Third column", "field": "thirdColumn"}
  ];

  List<Map<String, dynamic>> rows = <Map<String, dynamic>>[
    {
      "id": 01,
      "firstColumn": "A First column value example",
      "secondColumn": "Second column value",
      "thirdColumn": "Third column value"
    },
    {
      "id": 02,
      "firstColumn": "B First column value",
      "secondColumn": "Second column value",
      "thirdColumn": "Third column value"
    },
  ];
}

void main() {
  bootstrap(TableViewSimpleExample);
}
