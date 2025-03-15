import 'package:flutter/material.dart';

class ExpressCalculator extends StatefulWidget {
  const ExpressCalculator({super.key});

  @override
  State<ExpressCalculator> createState() => _ExpressCalculatorState();
}

class _ExpressCalculatorState extends State<ExpressCalculator> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedDistance;
  bool _isCheckedPacking = false;
  bool _isCheckedProtection = false;
  String? _chooseType = '';
  int? _weight;
  int _distancePrice;
  int _sumPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('คำนวณค่าจัดส่ง')),
      body: Container(
        margin: EdgeInsets.all(20),
        // child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(children: [Text('น้ำหนักสินค้า (กก.):')]),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'น้ำหนักสินค้า (กก.):',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกน้ำหนักสินค้าของท่าน';
                  }
                  return value;
                },
                onChanged: (value) {
                  setState(() {
                    _weight = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Row(children: [Text('เลือกระยะทาง:')]),
              DropdownButtonFormField<String>(
                value: _selectedDistance,
                items:
                    ['ในเมือง', 'ต่างจังหวัด', 'ต่างประเทศ']
                        .map(
                          (item) =>
                              DropdownMenuItem(value: item, child: Text(item)),
                        )
                        .toList(),
                onChanged: (value) {
                  _selectedDistance = value;
                  if (_selectedDistance == 'ในเมือง') {
                    _distancePrice = (10 * _weight);
                  } else if (_selectedDistance == 'ต่างจังหวัด') {
                    _distancePrice = (15 * _weight);
                  } else if (_selectedDistance == 'ต่างประเทศ') {
                    _distancePrice = (50 * _weight);
                  }
                },
                validator:
                    (value) =>
                        value == null ? 'กรุณากรอกเลือกระยะทางของท่าน' : null,
              ),
              SizedBox(height: 20),
              Row(children: [Text('บริการเสริม: ')]),
              CheckboxListTile(
                title: const Text('แพ็คกิ้งพิเศษ (+20 บาท)'),
                value: _isCheckedPacking,
                onChanged: (value) {
                  setState(() {
                    _isCheckedPacking = value!;
                    if (_isCheckedPacking == true) {
                      _sumPrice = _distancePrice + 20;
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('ประกันพัสดุ (+50 บาท)'),
                value: _isCheckedProtection,
                onChanged: (value) {
                  setState(() {
                    _isCheckedProtection = value!;
                    if (_isCheckedProtection == true) {
                      _sumPrice = _distancePrice + 50;
                    }
                  });
                },
              ),
              SizedBox(height: 20),
              Row(children: [Text('เลือกความเร่งด่วน:')]),
              RadioListTile(
                title: const Text('ปกติ'),
                value: 'ปกติ',
                groupValue: _chooseType,
                onChanged: (value) {
                  setState(() {
                    _chooseType = value.toString();
                    if (_chooseType == 'ปกติ') {
                      _sumPrice = _sumPrice + 0;
                    }
                  });
                },
              ),
              RadioListTile(
                title: const Text('ด่วน'),
                value: 'ด่วน',
                groupValue: _chooseType,
                onChanged: (value) {
                  setState(() {
                    _chooseType = value.toString();
                    if (_chooseType == 'ด่วน') {
                      _sumPrice = _sumPrice + 30;
                    }
                  });
                },
              ),
              RadioListTile(
                title: const Text('ด่วนพิเศษ'),
                value: 'ด่วนพิเศษ',
                groupValue: _chooseType,
                onChanged: (value) {
                  setState(() {
                    _chooseType = value.toString();
                    if (_chooseType == 'ด่วนพิเศษ') {
                      _sumPrice = _sumPrice + 50;
                    }
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('กรุณากรอกรายละเอียดให้ครบถ้วน');
                  }
                },
                child: Text('คำนวณราคา'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 100,
                      right: 100,
                      top: 25,
                      bottom: 25,
                    ),
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text(
                      'ค่าจัดส่งทั้งหมด: $_sumPrice',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
