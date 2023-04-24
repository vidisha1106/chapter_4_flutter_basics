import 'package:flutter/material.dart';

Size displaySize(BuildContext context)
{
  print("Size= "+MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context)
{
  print("Height="+ displaySize(context).height.toString());
  return displaySize(context).height;
}

double displayWidth(BuildContext context)
{
  print("Width="+displaySize(context).width.toString());
   return displaySize(context).width;
}