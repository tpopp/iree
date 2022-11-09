################################################################################
# Autogenerated by build_tools/testing/generate_cmake_e2e_model_tests.py       #
# To update the tests, modify definitions in the generator and regenerate this #
# file.                                                                        #
################################################################################

set(IREE_MODULE_COMPILE_CONFIG_ID_ANDROID-ARM64-V8A
  "1f2adf49-282e-4aff-9d4f-e63b1621f1e8"
)

set(IREE_MODULE_COMPILE_CONFIG_ID_RISCV32-LINUX
  "6d9ce240-ec14-4d8f-a8e4-1b20aa17b4e4"
)

set(IREE_MODULE_COMPILE_CONFIG_ID_RISCV64-LINUX
  "cdf579a9-5446-403b-a991-802a6c702e65"
)

set(IREE_MODULE_COMPILE_CONFIG_ID_X86_64
  "e7e18b0f-c72d-4f1c-89b1-5afee70df6e9"
)

iree_benchmark_suite_module_test(
  NAME
    "mobilenet_v1_fp32_correctness_test"
  MODEL
    "78eab9e5-9ff1-4769-9b55-933c81cc9a0f_MobileNetV1_fp32"
  DRIVER
    "local-sync"
  EXPECTED_OUTPUT
    "mobilenet_v1_fp32_expected_output.txt"
  RUNNER_ARGS
    "--entry_function=main"
    "--function_input=1x224x224x3xf32=0"
  UNSUPPORTED_PLATFORMS
    "riscv32-Linux"
    "android-arm64-v8a"
)

iree_benchmark_suite_module_test(
  NAME
    "efficientnet_int8_correctness_test"
  MODEL
    "4a6f545e-1b4e-41a5-9236-792aa578184b_EfficientNet_int8"
  DRIVER
    "local-sync"
  EXPECTED_OUTPUT
    "efficientnet_int8_expected_output.txt"
  RUNNER_ARGS
    "--entry_function=main"
    "--function_input=1x224x224x3xui8=0"
  UNSUPPORTED_PLATFORMS
    "android-arm64-v8a"
)

iree_benchmark_suite_module_test(
  NAME
    "deeplab_v3_fp32_correctness_test"
  MODEL
    "c36c63b0-220a-4d78-8ade-c45ce47d89d3_DeepLabV3_fp32"
  DRIVER
    "local-sync"
  EXPECTED_OUTPUT
    "deeplab_v3_fp32_input_0_expected_output.npy"
  RUNNER_ARGS
    "--entry_function=main"
    "--function_input=1x257x257x3xf32=0"
    "--expected_f32_threshold=0.001"
  UNSUPPORTED_PLATFORMS
    "riscv32-Linux"
)

iree_benchmark_suite_module_test(
  NAME
    "person_detect_int8_correctness_test"
  MODEL
    "bc1338be-e3df-44fd-82e4-40ba9560a073_PersonDetect_int8"
  DRIVER
    "local-sync"
  EXPECTED_OUTPUT
    "1x2xi8=[72 -72]"
  RUNNER_ARGS
    "--entry_function=main"
    "--function_input=1x96x96x1xi8=0"
  UNSUPPORTED_PLATFORMS
    "android-arm64-v8a"
)

