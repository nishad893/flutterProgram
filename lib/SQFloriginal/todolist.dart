



import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: todolist(),
  debugShowCheckedModeBanner: false,));
}

class todolist extends StatefulWidget {
  const todolist({super.key});

  @override
  State<todolist> createState() => _todolistState();
}

class _todolistState extends State<todolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("TO do lIST"),
      ),
      body:
      ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            title:Text("") ,
            subtitle: Text(""),

            trailing: Row(

              children: [

                IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.black,))
              ],
            ),



          ),
        );
      }),

      floatingActionButton: FloatingActionButton(
        onPressed: ()=>showadd(),


        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.blue,

      ),



    );
  }

  void showadd(){

    showModalBottomSheet(


      isScrollControlled: true,

        context: context,


        builder: (context)
        {

          return FractionallySizedBox(
              heightFactor: .3,


      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              hintText: "Title",
              border: OutlineInputBorder()
            ),
          ),

          SizedBox(height: 15,),

          TextField(
            decoration: InputDecoration(
              hintText: "Enter note",
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(
            height: 15,
          ),

          Padding(
            padding: const EdgeInsets.only(right: 160),
            child: ElevatedButton(




                onPressed: (){},

                child:Text("Add",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),

            ),
          )

        ],


      ),



          );});}

  }


