import 'package:famarar/data/models/user.dart';
import 'package:famarar/utils/colors.dart';
import 'package:flutter/material.dart';

class UsersTable extends StatefulWidget {
  const UsersTable({super.key, required this.users});

  final List<User> users;

  @override
  State<UsersTable> createState() => _UsersTableState();
}

class _UsersTableState extends State<UsersTable> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
          columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Role')),
            DataColumn(label: Text('Status')),
            DataColumn(label: Text('Actions')),
          ],
          rows: widget.users.map((user) {
            return DataRow(
                cells: [
                  DataCell(Text(user.name, style: TextStyle(color: DColors.textDark, fontWeight: FontWeight.w500),)),
                  DataCell(Text(user.role)),
                  DataCell(
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: user.isActive ? Colors.green[100] : Colors.red[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        user.isActive ? 'Active' : 'Inactive',
                        style: TextStyle(
                          color: user.isActive ? Colors.green : Colors.red,
                        ),
                      ),
                    ),
                  ),
                  DataCell(Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.blue),
                        onPressed: () => (user),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () => (user),
                      ),
                    ],
                  )),
                ]);
          }).toList()
      ),
    );
  }
}
