import 'package:famarar/components/system_card.dart';
import 'package:flutter/material.dart';

class AvailableReport {
  final String title;
  final String description;
  final IconData icon;
  final SystemCardVariant variant;

  AvailableReport({
    required this.title,
    required this.description,
    required this.icon,
    required this.variant,
  });
}

List<AvailableReport> reports = [
  AvailableReport(
    title: 'User Demographics Report',
    description: 'Age, location, and usage patterns',
    icon: Icons.bar_chart_rounded,
    variant: SystemCardVariant.primary,
  ),
  AvailableReport(
    title: 'Community Engagement',
    description: 'User interaction and content engagement',
    icon: Icons.people_alt_outlined,
    variant: SystemCardVariant.success,
  ),
  AvailableReport(
    title: 'Quarterly Program Impact',
    description: 'Effectiveness and outcomes analysis',
    icon: Icons.calendar_today_outlined,
    variant: SystemCardVariant.pink,
  ),
];
