import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/common/loader.dart';
import '../../../responsive/responsive.dart';
import '../controller/community_controller.dart';

class CreateCommunityScreen extends ConsumerStatefulWidget {
  const CreateCommunityScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _CreateCommunityScreenState();
}

class _CreateCommunityScreenState extends ConsumerState<CreateCommunityScreen> {

  final communityNameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    communityNameController.dispose();
  }

  void createCommunity() {
    ref.read(communityControllerProvider.notifier).createCommunity(
      context,
      communityNameController.text.trim(),

    );
  }

  @override
  Widget build(BuildContext context) {

    final isloading = ref.watch(communityControllerProvider) ;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Community'),
      ),
      body: isloading ? const Loader() : Responsive(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text('Community name'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: communityNameController,
                decoration: const InputDecoration(
                  hintText: 'r/Community_name',
                  filled: true,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(18),
                ),
                maxLength: 21,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: ()=> createCommunity(),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: const Text(
                  'Create community',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),          ],
          ),
        ),
      ),
    );
  }
}

