/// ## [RequestStateEnum] Enum Documentation
///
/// The `RequestStateEnum` represents the various states a request can be in
/// during its lifecycle.
///
/// ### States:
///
/// - **[initial]**:
///   - Indicates the initial state of the request before any operation
///   has started.
///
/// - **[loading]**:
///   - Represents the state where the request is in progress and loading.
///
/// - **[loaded]**:
///   - Indicates that the request has been completed successfully,
///   and the data is available.
///
/// - **[error]**:
///   - Represents a state where the request has failed due to an error.
///
library;

enum RequestStateEnum {
  initial,
  loading,
  loaded,
  error,
}
