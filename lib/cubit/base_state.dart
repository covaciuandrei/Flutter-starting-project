import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class BaseState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialState extends BaseState {}

class PendingState extends BaseState {}
