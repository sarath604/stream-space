import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_space/application/people/people_bloc.dart';

class ScrollManager extends StatefulWidget {
  final Widget child;

  const ScrollManager({super.key, required this.child});

  @override
  _ScrollManagerState createState() => _ScrollManagerState();

  static of(BuildContext context) {}
}

class _ScrollManagerState extends State<ScrollManager> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PeopleBloc>(context).add(const PeopleEvent.getpepoles());
    });
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      // Dispatch event to fetch the next page
      BlocProvider.of<PeopleBloc>(context).add(const PeopleEvent.getpeoplesNextPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}