// ignore_for_file: use_build_context_synchronously

import 'package:bloody/blocs/bloc_event_of_user/event_of_user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BtnContact extends StatefulWidget {
  const BtnContact({super.key, required this.text, this.phone, this.id});
  final String text;
  final String? phone;
  final String? id;

  @override
  State<StatefulWidget> createState() {
    return _BtnContact();
  }
}

class _BtnContact extends State<BtnContact> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String text = widget.text;
    return BlocBuilder<EventOfUserCubit, EventOfUserState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () async {
            bool isDel = await context
                .read<EventOfUserCubit>()
                .deleteEventRegis(widget.phone!, widget.id!);
            if (isDel) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Delete event success'),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Delete event fail'),
                ),
              );
            }
          },
          child: Container(
            height: height * 0.08 - 10,
            padding:
                EdgeInsets.symmetric(horizontal: width * 0.035, vertical: 9),
            child: Container(
              width: width * 1,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 182, 27, 45),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(251, 255, 255, 255)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
