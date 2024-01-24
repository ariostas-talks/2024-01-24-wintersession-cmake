#include <optional>
#include "simple.hpp"

// std::optional requires C++17
std::optional<float> divide(float numerator, float denominator) {
  if (denominator == 0) {
    return std::nullopt;
  }
  return numerator / denominator;
}

// returns 0 if it's an invalid division
float simple1::division_as_string(float numerator, float denominator) {
  std::optional<float> result = divide(numerator, denominator);
  return result.value_or(0);
}