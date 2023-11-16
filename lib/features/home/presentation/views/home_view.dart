import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_listviewitems.dart';
import 'package:flutter/material.dart';

class homeview extends StatelessWidget {
  const homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customappbar(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  customlistviewitems(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Text(
                    "Best Seller",
                    style: mystyles.text18,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: bookslistview(),
            )
          ],
        ),
      ),
    );
  }
}
