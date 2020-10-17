
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:booklist_providerdemo_flutter/datamodel.dart';

class DisplayBooks extends StatelessWidget {
  TextEditingController titleCntrl = TextEditingController();
  TextEditingController authorCntrl = TextEditingController();
  TextEditingController priceCntrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookstore'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  style: BorderStyle.solid,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: titleCntrl,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: 'Enter the book title',
                    ),
                  ),

                  SizedBox(height: 10),

                  TextField(
                    controller: authorCntrl,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: 'Enter the authorname',
                    ),
                  ),

                  SizedBox(height: 10),

                  TextField(
                    controller: priceCntrl,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: 'Enter the price',
                    ),
                  ),

                  SizedBox(height: 10),

                  RaisedButton.icon(
                    color: Colors.blueAccent,
                      icon: Icon(Icons.add),
                      label: Text('ADD'),
                      onPressed: (){
                      Provider.of<BookModel>(context, listen: false).addBookToModel(//add to model
                          title: titleCntrl.text,
                          author: authorCntrl.text,
                          price: double.parse(priceCntrl.text),
                      );
                      print(titleCntrl.text);
                      },
                  )
                ],
              ),
            ),

            SizedBox(height: 3),
            Divider(color: Colors.black),
            SizedBox(height: 3),

            Expanded(
              child: Consumer<BookModel>(builder: (context, model, child){
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: model.booklist.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.book),
                          title: Text(model.booklist[index].title, style: TextStyle(fontSize:12.5)),
                          subtitle: Text('Author:' + model.booklist[index].author + '\nPrice: ${model.booklist[index].price}'),
                        ),
                      );
                    }
                    );
              }),
            ),
          ],
        ),
      ),

    );
  }
}
