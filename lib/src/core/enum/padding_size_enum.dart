/// ## [PaddingSizeEnum] Enum Documentation
///
/// The `PaddingSizeEnum` enum is used to represent different predefined padding sizes for UI elements. It allows for consistent padding throughout the application, improving the visual layout and alignment of components.
///
/// ### Values:
/// - **[min]**: Represents a small padding size with a value of `8.0`. Typically used for tight layouts or when minimal spacing is required.
/// - **[medium]**: Represents a medium padding size with a value of `12.0`. A balanced option for general UI elements requiring moderate spacing.
/// - **[large]**: Represents a larger padding size with a value of `16.0`. Used when more spacing is needed for better visual clarity or to separate larger UI components.
///
/// ### Attributes:
/// - `horizontalSize`: A `double` value representing the size of the padding.
library;

enum PaddingSizeEnum {
  min(8),
  medium(12),
  large(16);

  const PaddingSizeEnum(this.horizontalSize);
  final double horizontalSize;
}
