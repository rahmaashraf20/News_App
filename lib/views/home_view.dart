import 'package:flutter/material.dart';

import 'package:newsapp_task7/widgets/cardList.dart';
import 'package:newsapp_task7/widgets/filterBar.dart';
import 'package:newsapp_task7/widgets/news_list_view.dart';

class Homeview extends StatelessWidget {
  Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: HeadingWidget(),
              ),
              SliverToBoxAdapter(
                child: Cardlistview(),
              ),
              const SliverToBoxAdapter(
                child: FilterBar(),
              ),
              SliverFillRemaining(
                child: NewsListView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Latest News',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text('see all', style: TextStyle(color: Colors.blue)),
            Icon(Icons.arrow_forward)
          ],
        ),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Expanded(
        child: CustomTextField(),
      ),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notification_add,
            color: Colors.orange,
          ))
    ]);
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.search),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(color: Colors.black)),
          hintText: 'search for the news',
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
    );
  }
}
