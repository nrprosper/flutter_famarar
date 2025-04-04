import 'package:famarar/components/system_card.dart';
import 'package:flutter/material.dart';

class SystemCardData {
  final String title;
  final int count;
  final IconData icon;
  final SystemCardVariant variant;

  SystemCardData({
    required this.title,
    required this.count,
    required this.icon,
    required this.variant,
  });
}

// Create a list of card data
List<SystemCardData> systemCards = [
  SystemCardData(
    title: 'Active Users',
    count: 2458,
    icon: Icons.people_outline_rounded,
    variant: SystemCardVariant.primary,
  ),
  SystemCardData(
    title: 'Security Alerts',
    count: 12,
    icon: Icons.security_rounded,
    variant: SystemCardVariant.warning,
  ),
  SystemCardData(
    title: 'Notifications',
    count: 324,
    icon: Icons.notifications_none_rounded,
    variant: SystemCardVariant.success,
  ),
  SystemCardData(
    title: 'Reports',
    count: 45,
    icon: Icons.assignment_outlined,
    variant: SystemCardVariant.warning,
  ),
  SystemCardData(
    title: 'Health Providers',
    count: 89,
    icon: Icons.local_hospital_outlined,
    variant: SystemCardVariant.primary,
  ),
  SystemCardData(
    title: 'Resources',
    count: 156,
    icon: Icons.library_books_rounded,
    variant: SystemCardVariant.primary,
  ),
];