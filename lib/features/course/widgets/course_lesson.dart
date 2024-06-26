import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:skillharvest/Theme/pallete.dart';

class CourseLesson extends StatelessWidget {
  const CourseLesson({
    super.key,
    required this.title,
    required this.duration,
    required this.isLocked,
    required this.lessonNo,
    required this.isCompleted,
  });

  final String title;
  final String duration;
  final bool isLocked;
  final String lessonNo;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lessonNo,
            style: const TextStyle(
              fontSize: 24,
              color: Pallete.greyText,
            ),
          ),
          SizedBox(
            width: 230,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                ),
                const Gap(4),
                Row(
                  children: [
                    Text(
                      '$duration mins',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Pallete.blueColor,
                      ),
                    ),
                    const Gap(5),
                    isCompleted
                        ? const Icon(
                            Icons.check_circle_rounded,
                            size: 14,
                            color: Pallete.blueColor,
                          )
                        : const SizedBox(),
                  ],
                ),
              ],
            ),
          ),
          isLocked
              ? const SizedBox(
                  width: 45,
                  child: CircleAvatar(
                    backgroundColor: Pallete.onBlueBackground,
                    maxRadius: 19,
                    child: Icon(
                      Icons.lock_rounded,
                      size: 22,
                      color: Pallete.whiteColor,
                    ),
                  ),
                )
              : const SizedBox(
                  width: 45,
                  child: Icon(
                    Icons.play_circle,
                    size: 44,
                    color: Pallete.blueColor,
                  ),
                ),
        ],
      ),
    );
  }
}
