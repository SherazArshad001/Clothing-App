import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';

class CustomerReview {
  final String customerImage;
  final String customerName;
  final String review;

  CustomerReview({
    required this.customerImage,
    required this.customerName,
    required this.review,
  });
}

class DescriptionReviewTile extends StatefulWidget {
  final String tileText;
  final List<CustomerReview> customerReviews;

  const DescriptionReviewTile({
    super.key,
    required this.tileText,
    required this.customerReviews,
  });

  @override
  DescriptionReviewTileState createState() => DescriptionReviewTileState();
}

class DescriptionReviewTileState extends State<DescriptionReviewTile> {
  bool _showDescription = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.tileText,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  _showDescription = !_showDescription;
                });
              },
              icon: Material(
                color: AppColors.cardbackColor1,
                borderRadius: BorderRadius.circular(10),
                child: const SizedBox(
                  height: 25,
                  width: 25,
                  child: Icon(
                    Icons.navigate_next_outlined,
                  ),
                ),
              ),
            ),
          ],
        ),
        _showDescription
            ? widget.tileText == 'Reviews'
                ? widget.customerReviews.isEmpty
                    ? const Text('No reviews available')
                    : Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: widget.customerReviews
                              .map((review) => ReviewCard(review: review))
                              .toList(),
                        ),
                      )
                : const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                        'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.Read more'),
                  )
            : Container(),
      ],
    );
  }
}

class ReviewCard extends StatelessWidget {
  final CustomerReview review;

  const ReviewCard({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(review.customerImage),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    review.customerName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    review.review,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
