import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class Chatsample extends StatelessWidget {
  const Chatsample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right: 80),
        child: ClipPath(
          clipper: UpperNipMessageClipper(MessageType.receive),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFFE1E1E2),
            ),
            child: Text(
            "Hey, How could I help you?  ",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        ),
        Container(
          
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                
                padding: EdgeInsets.only(left: 20, top:10, bottom: 25, right: 20),
                decoration: BoxDecoration(
                  
                  color: Color.fromARGB(255, 126, 199, 247),
                ),
                  child: Text(
                      
                    
                    "I have a massive headache what should I do?",
                    
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
              ),
            ),
          
          ),
        )
      ],
    );
  }
}