import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/widgets/const.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?CircleAvatar(
      backgroundColor: Colors.white,
      radius:38 ,
      child: CircleAvatar(
        backgroundColor:color,
        radius: 36,
      ),
    ) : CircleAvatar(
      backgroundColor:color,
      radius: 38,
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount:kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: 
          GestureDetector(
            onTap: () {
              currentIndex=index;
              BlocProvider.of<AddNoteCubit>(context).color=kColors[index];
              setState(() {
                
              });
            },
            child: ColorItem(color: kColors[index],isActive:currentIndex==index,)),
        );
      
      }),
    );
  }
}