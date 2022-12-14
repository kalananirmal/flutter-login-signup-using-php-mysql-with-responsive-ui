class TableDetails {
  late String id, firstname, email;

  TableDetails(
      {required this.id, required this.firstname, required this.email});

  static List<TableDetails> getbldetails() {
    return <TableDetails>[
      TableDetails(id: '001', firstname: 'anura', email: 'anura@gmail.com'),
      TableDetails(id: '002', firstname: 'ranga', email: 'ranga@gmail.com'),
      TableDetails(id: '003', firstname: 'ranha', email: 'ranha@gmail.com'),
      TableDetails(id: '004', firstname: 'yash', email: 'yash@gmail.com'),
      TableDetails(id: '005', firstname: 'bule', email: 'bule@gmail.com'),
      TableDetails(id: '006', firstname: 'suba', email: 'bokki@gmail.com'),
      TableDetails(id: '007', firstname: 'suda', email: 'suda@gmail.com'),
      TableDetails(id: '008', firstname: 'gange', email: 'gange@gmail.com'),
      TableDetails(id: '009', firstname: 'ganga', email: 'boka@gmail.com'),
      TableDetails(id: '010', firstname: 'githma', email: 'githma@gmail.com'),
      TableDetails(id: '011', firstname: 'banda', email: 'banda@gmail.com'),
      TableDetails(id: '012', firstname: 'malee', email: 'malee@gmail.com'),
      TableDetails(id: '013', firstname: 'danu', email: 'danu@gmail.com'),
      TableDetails(id: '014', firstname: 'gangu', email: 'gangu@gmail.com'),
      TableDetails(id: '015', firstname: 'sunil', email: 'sunil@gmail.com'),
      TableDetails(id: '016', firstname: 'nimal', email: 'nimal@gmail.com'),
      TableDetails(id: '017', firstname: 'kamal', email: 'kamal@gmail.com'),
    ];
  }
}
