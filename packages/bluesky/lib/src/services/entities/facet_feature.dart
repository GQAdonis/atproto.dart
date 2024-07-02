// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../gen_types/app/bsky/richtext/facet/link.dart';
import '../gen_types/app/bsky/richtext/facet/mention.dart';
import '../gen_types/app/bsky/richtext/facet/tag.dart';

part 'facet_feature.freezed.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/richtext/facet#main
@freezed
@Deprecated('Use UFacetFeature')
class FacetFeature with _$FacetFeature {
  const factory FacetFeature.mention({
    required FacetMention data,
  }) = UFacetFeatureMention;

  const factory FacetFeature.link({
    required FacetLink data,
  }) = UFacetFeatureLink;

  const factory FacetFeature.tag({
    required FacetTag data,
  }) = UFacetFeatureTag;

  const factory FacetFeature.unknown({
    required Map<String, dynamic> data,
  }) = UFacetFeatureUnknown;
}
