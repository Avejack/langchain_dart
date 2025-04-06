// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of openai_realtime_schema;

// ==========================================
// CLASS: TurnDetection
// ==========================================

/// Configuration for turn detection, ether Server VAD or Semantic VAD. This can be set to `null` to turn off, in which case the client must manually trigger model response.
/// Server VAD means that the model will detect the start and end of speech based on audio volume and respond at the end of user speech.
/// Semantic VAD is more advanced and uses a turn detection model (in conjuction with VAD) to semantically estimate whether the user has finished speaking, then dynamically sets a timeout based on this probability. For example, if user audio trails off with "uhhm", the model will score a low probability of turn end and wait longer for the user to continue speaking. This can be useful for more natural conversations, but may have a higher latency.
@freezed
class TurnDetection with _$TurnDetection {
  const TurnDetection._();

  /// Factory constructor for TurnDetection
  const factory TurnDetection({
    /// Type of turn detection.
    required TurnDetectionType type,

    /// Used only for `semantic_vad` mode. The eagerness of the model to respond. `low` will wait longer for the user to continue speaking, `high` will respond more quickly. `auto` is the default and is equivalent to `medium`.
    @Default(TurnDetectionEagerness.auto) TurnDetectionEagerness eagerness,

    /// Used only for `server_vad` mode. Activation threshold for VAD (0.0 to 1.0), this defaults to 0.5. A higher threshold will require louder audio to activate the model, and thus might perform better in noisy environments.
    @JsonKey(includeIfNull: false) double? threshold,

    /// Used only for `server_vad` mode. Amount of audio to include before the VAD detected speech (in milliseconds). Defaults to 300ms.
    @JsonKey(name: 'prefix_padding_ms', includeIfNull: false)
    int? prefixPaddingMs,

    /// Used only for `server_vad` mode. Duration of silence to detect speech stop (in milliseconds). Defaults to 500ms. With shorter values the model will respond more quickly, but may jump in on short pauses from the user.
    @JsonKey(name: 'silence_duration_ms', includeIfNull: false)
    int? silenceDurationMs,

    /// Whether or not to automatically generate a response when a VAD stop event occurs.
    @JsonKey(name: 'create_response') @Default(true) bool createResponse,

    /// Whether or not to automatically interrupt any ongoing response with output to the default
    /// conversation (i.e. `conversation` of `auto`) when a VAD start event occurs.
    @JsonKey(name: 'interrupt_response') @Default(true) bool interruptResponse,
  }) = _TurnDetection;

  /// Object construction from a JSON representation
  factory TurnDetection.fromJson(Map<String, dynamic> json) =>
      _$TurnDetectionFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'type',
    'eagerness',
    'threshold',
    'prefix_padding_ms',
    'silence_duration_ms',
    'create_response',
    'interrupt_response'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'eagerness': eagerness,
      'threshold': threshold,
      'prefix_padding_ms': prefixPaddingMs,
      'silence_duration_ms': silenceDurationMs,
      'create_response': createResponse,
      'interrupt_response': interruptResponse,
    };
  }
}
