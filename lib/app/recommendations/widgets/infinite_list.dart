import 'package:flutter/material.dart';
import 'package:loc_advisor/app/recommendations/widgets/bottom_loader.dart';
import 'package:loc_advisor/app/recommendations/widgets/next_page_errors.dart';

class InfiniteList extends StatefulWidget {
  final int itemCount;
  final VoidCallback onFetchData;
  final bool hasReachedMax;
  final bool hasError;
  final bool isLoading;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final Widget Function(BuildContext context, int index) separatorBuilder;
  final bool shrinkWrap;
  final bool isReversed;

  const InfiniteList({
    required this.itemCount,
    required this.onFetchData,
    required this.hasReachedMax,
    required this.isLoading,
    required this.hasError,
    required this.itemBuilder,
    required this.separatorBuilder,
    this.shrinkWrap = false,
    this.isReversed = false,
    super.key,
  });

  @override
  State<InfiniteList> createState() => _InfiniteListState();
}

class _InfiniteListState extends State<InfiniteList> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: _onScroll,
      child: ListView.separated(
        reverse: widget.isReversed,
        shrinkWrap: widget.shrinkWrap,
        physics:
            widget.shrinkWrap ? const NeverScrollableScrollPhysics() : null,
        itemCount:
            widget.hasReachedMax ? widget.itemCount : widget.itemCount + 1,
        itemBuilder: _buildItem,
        separatorBuilder: widget.separatorBuilder,
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    if (index >= widget.itemCount) {
      return widget.hasError
          ? NextPageError(retryCallback: widget.onFetchData)
          : const BottomLoader();
    }

    return widget.itemBuilder(context, index);
  }

  bool _onScroll(ScrollNotification notification) {
    if (widget.isLoading) return false;
    if (_isAtEdge(notification) && !widget.hasError) {
      widget.onFetchData();
    }
    return false;
  }

  bool _isAtEdge(ScrollNotification notification) {
    if (!notification.metrics.atEdge) return false;
    return notification.metrics.pixels != 0;
  }
}
