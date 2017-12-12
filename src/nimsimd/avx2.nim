#
#
#          Nimrod's x86 avx2 intrinsics
#        (c) Copyright 2014 Ben Segovia
#
#    See the file copying.txt, included in this
#    distribution, for details about the copyright.
#
include avx

when someGcc:
  {.passC: "-mavx2".}
  {.passL: "-mavx2".}


proc abs_epi8*(a: m256i): m256i
  {.importc: "_mm256_abs_epi8", header: "immintrin.h".}
  ## Exposes _mm256_abs_epi8 intrinsics

proc abs_epi16*(a: m256i): m256i
  {.importc: "_mm256_abs_epi16", header: "immintrin.h".}
  ## Exposes _mm256_abs_epi16 intrinsics

proc abs_epi32*(a: m256i): m256i
  {.importc: "_mm256_abs_epi32", header: "immintrin.h".}
  ## Exposes _mm256_abs_epi32 intrinsics

proc packs_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_packs_epi16", header: "immintrin.h".}
  ## Exposes _mm256_packs_epi16 intrinsics

proc packs_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_packs_epi32", header: "immintrin.h".}
  ## Exposes _mm256_packs_epi32 intrinsics

proc packus_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_packus_epi16", header: "immintrin.h".}
  ## Exposes _mm256_packus_epi16 intrinsics

proc packus_epi32*(V1: m256i, V2: m256i): m256i
  {.importc: "_mm256_packus_epi32", header: "immintrin.h".}
  ## Exposes _mm256_packus_epi32 intrinsics

proc add_epi8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_add_epi8", header: "immintrin.h".}
  ## Exposes _mm256_add_epi8 intrinsics

proc add_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_add_epi16", header: "immintrin.h".}
  ## Exposes _mm256_add_epi16 intrinsics

proc add_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_add_epi32", header: "immintrin.h".}
  ## Exposes _mm256_add_epi32 intrinsics

proc add_epi64*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_add_epi64", header: "immintrin.h".}
  ## Exposes _mm256_add_epi64 intrinsics

proc adds_epi8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_adds_epi8", header: "immintrin.h".}
  ## Exposes _mm256_adds_epi8 intrinsics

proc adds_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_adds_epi16", header: "immintrin.h".}
  ## Exposes _mm256_adds_epi16 intrinsics

proc adds_epu8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_adds_epu8", header: "immintrin.h".}
  ## Exposes _mm256_adds_epu8 intrinsics

proc adds_epu16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_adds_epu16", header: "immintrin.h".}
  ## Exposes _mm256_adds_epu16 intrinsics

proc and_si*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_and_si256", header: "immintrin.h".}
  ## Exposes _mm256_and_si256 intrinsics

proc andnot_si*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_andnot_si256", header: "immintrin.h".}
  ## Exposes _mm256_andnot_si256 intrinsics

proc avg_epu8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_avg_epu8", header: "immintrin.h".}
  ## Exposes _mm256_avg_epu8 intrinsics

proc avg_epu16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_avg_epu16", header: "immintrin.h".}
  ## Exposes _mm256_avg_epu16 intrinsics

proc blendv_epi8*(V1: m256i, V2: m256i, M: m256i): m256i
  {.importc: "_mm256_blendv_epi8", header: "immintrin.h".}
  ## Exposes _mm256_blendv_epi8 intrinsics

proc cmpeq_epi8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_cmpeq_epi8", header: "immintrin.h".}
  ## Exposes _mm256_cmpeq_epi8 intrinsics

proc cmpeq_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_cmpeq_epi16", header: "immintrin.h".}
  ## Exposes _mm256_cmpeq_epi16 intrinsics

proc cmpeq_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_cmpeq_epi32", header: "immintrin.h".}
  ## Exposes _mm256_cmpeq_epi32 intrinsics

proc cmpeq_epi64*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_cmpeq_epi64", header: "immintrin.h".}
  ## Exposes _mm256_cmpeq_epi64 intrinsics

proc cmpgt_epi8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_cmpgt_epi8", header: "immintrin.h".}
  ## Exposes _mm256_cmpgt_epi8 intrinsics

proc cmpgt_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_cmpgt_epi16", header: "immintrin.h".}
  ## Exposes _mm256_cmpgt_epi16 intrinsics

proc cmpgt_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_cmpgt_epi32", header: "immintrin.h".}
  ## Exposes _mm256_cmpgt_epi32 intrinsics

proc cmpgt_epi64*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_cmpgt_epi64", header: "immintrin.h".}
  ## Exposes _mm256_cmpgt_epi64 intrinsics

proc hadd_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_hadd_epi16", header: "immintrin.h".}
  ## Exposes _mm256_hadd_epi16 intrinsics

proc hadd_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_hadd_epi32", header: "immintrin.h".}
  ## Exposes _mm256_hadd_epi32 intrinsics

proc hadds_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_hadds_epi16", header: "immintrin.h".}
  ## Exposes _mm256_hadds_epi16 intrinsics

proc hsub_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_hsub_epi16", header: "immintrin.h".}
  ## Exposes _mm256_hsub_epi16 intrinsics

proc hsub_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_hsub_epi32", header: "immintrin.h".}
  ## Exposes _mm256_hsub_epi32 intrinsics

proc hsubs_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_hsubs_epi16", header: "immintrin.h".}
  ## Exposes _mm256_hsubs_epi16 intrinsics

proc maddubs_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_maddubs_epi16", header: "immintrin.h".}
  ## Exposes _mm256_maddubs_epi16 intrinsics

proc madd_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_madd_epi16", header: "immintrin.h".}
  ## Exposes _mm256_madd_epi16 intrinsics

proc max_epi8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_max_epi8", header: "immintrin.h".}
  ## Exposes _mm256_max_epi8 intrinsics

proc max_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_max_epi16", header: "immintrin.h".}
  ## Exposes _mm256_max_epi16 intrinsics

proc max_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_max_epi32", header: "immintrin.h".}
  ## Exposes _mm256_max_epi32 intrinsics

proc max_epu8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_max_epu8", header: "immintrin.h".}
  ## Exposes _mm256_max_epu8 intrinsics

proc max_epu16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_max_epu16", header: "immintrin.h".}
  ## Exposes _mm256_max_epu16 intrinsics

proc max_epu32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_max_epu32", header: "immintrin.h".}
  ## Exposes _mm256_max_epu32 intrinsics

proc min_epi8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_min_epi8", header: "immintrin.h".}
  ## Exposes _mm256_min_epi8 intrinsics

proc min_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_min_epi16", header: "immintrin.h".}
  ## Exposes _mm256_min_epi16 intrinsics

proc min_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_min_epi32", header: "immintrin.h".}
  ## Exposes _mm256_min_epi32 intrinsics

proc min_epu8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_min_epu8", header: "immintrin.h".}
  ## Exposes _mm256_min_epu8 intrinsics

proc min_epu16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_min_epu16", header: "immintrin.h".}
  ## Exposes _mm256_min_epu16 intrinsics

proc min_epu32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_min_epu32", header: "immintrin.h".}
  ## Exposes _mm256_min_epu32 intrinsics

proc movemask_epi8*(a: m256i): int32
  {.importc: "_mm256_movemask_epi8", header: "immintrin.h".}
  ## Exposes _mm256_movemask_epi8 intrinsics

proc cvtepi8_epi16*(V: m128i): m256i
  {.importc: "_mm256_cvtepi8_epi16", header: "immintrin.h".}
  ## Exposes _mm256_cvtepi8_epi16 intrinsics

proc cvtepi8_epi32*(V: m128i): m256i
  {.importc: "_mm256_cvtepi8_epi32", header: "immintrin.h".}
  ## Exposes _mm256_cvtepi8_epi32 intrinsics

proc cvtepi8_epi64*(V: m128i): m256i
  {.importc: "_mm256_cvtepi8_epi64", header: "immintrin.h".}
  ## Exposes _mm256_cvtepi8_epi64 intrinsics

proc cvtepi16_epi32*(V: m128i): m256i
  {.importc: "_mm256_cvtepi16_epi32", header: "immintrin.h".}
  ## Exposes _mm256_cvtepi16_epi32 intrinsics

proc cvtepi16_epi64*(V: m128i): m256i
  {.importc: "_mm256_cvtepi16_epi64", header: "immintrin.h".}
  ## Exposes _mm256_cvtepi16_epi64 intrinsics

proc cvtepi32_epi64*(V: m128i): m256i
  {.importc: "_mm256_cvtepi32_epi64", header: "immintrin.h".}
  ## Exposes _mm256_cvtepi32_epi64 intrinsics

proc cvtepu8_epi16*(V: m128i): m256i
  {.importc: "_mm256_cvtepu8_epi16", header: "immintrin.h".}
  ## Exposes _mm256_cvtepu8_epi16 intrinsics

proc cvtepu8_epi32*(V: m128i): m256i
  {.importc: "_mm256_cvtepu8_epi32", header: "immintrin.h".}
  ## Exposes _mm256_cvtepu8_epi32 intrinsics

proc cvtepu8_epi64*(V: m128i): m256i
  {.importc: "_mm256_cvtepu8_epi64", header: "immintrin.h".}
  ## Exposes _mm256_cvtepu8_epi64 intrinsics

proc cvtepu16_epi32*(V: m128i): m256i
  {.importc: "_mm256_cvtepu16_epi32", header: "immintrin.h".}
  ## Exposes _mm256_cvtepu16_epi32 intrinsics

proc cvtepu16_epi64*(V: m128i): m256i
  {.importc: "_mm256_cvtepu16_epi64", header: "immintrin.h".}
  ## Exposes _mm256_cvtepu16_epi64 intrinsics

proc cvtepu32_epi64*(V: m128i): m256i
  {.importc: "_mm256_cvtepu32_epi64", header: "immintrin.h".}
  ## Exposes _mm256_cvtepu32_epi64 intrinsics

proc mul_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_mul_epi32", header: "immintrin.h".}
  ## Exposes _mm256_mul_epi32 intrinsics

proc mulhrs_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_mulhrs_epi16", header: "immintrin.h".}
  ## Exposes _mm256_mulhrs_epi16 intrinsics

proc mulhi_epu16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_mulhi_epu16", header: "immintrin.h".}
  ## Exposes _mm256_mulhi_epu16 intrinsics

proc mulhi_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_mulhi_epi16", header: "immintrin.h".}
  ## Exposes _mm256_mulhi_epi16 intrinsics

proc mullo_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_mullo_epi16", header: "immintrin.h".}
  ## Exposes _mm256_mullo_epi16 intrinsics

proc mullo_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_mullo_epi32", header: "immintrin.h".}
  ## Exposes _mm256_mullo_epi32 intrinsics

proc mul_epu32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_mul_epu32", header: "immintrin.h".}
  ## Exposes _mm256_mul_epu32 intrinsics

proc or_si256*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_or_si256", header: "immintrin.h".}
  ## Exposes _mm256_or_si256 intrinsics

proc sad_epu8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_sad_epu8", header: "immintrin.h".}
  ## Exposes _mm256_sad_epu8 intrinsics

proc shuffle_epi8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_shuffle_epi8", header: "immintrin.h".}
  ## Exposes _mm256_shuffle_epi8 intrinsics

proc sign_epi8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_sign_epi8", header: "immintrin.h".}
  ## Exposes _mm256_sign_epi8 intrinsics

proc sign_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_sign_epi16", header: "immintrin.h".}
  ## Exposes _mm256_sign_epi16 intrinsics

proc sign_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_sign_epi32", header: "immintrin.h".}
  ## Exposes _mm256_sign_epi32 intrinsics

proc slli_epi16*(a: m256i, count: int32): m256i
  {.importc: "_mm256_slli_epi16", header: "immintrin.h".}
  ## Exposes _mm256_slli_epi16 intrinsics

proc sll_epi16*(a: m256i, count: m128i): m256i
  {.importc: "_mm256_sll_epi16", header: "immintrin.h".}
  ## Exposes _mm256_sll_epi16 intrinsics

proc slli_epi32*(a: m256i, count: int32): m256i
  {.importc: "_mm256_slli_epi32", header: "immintrin.h".}
  ## Exposes _mm256_slli_epi32 intrinsics

proc sll_epi32*(a: m256i, count: m128i): m256i
  {.importc: "_mm256_sll_epi32", header: "immintrin.h".}
  ## Exposes _mm256_sll_epi32 intrinsics

proc slli_epi64*(a: m256i, count: int32): m256i
  {.importc: "_mm256_slli_epi64", header: "immintrin.h".}
  ## Exposes _mm256_slli_epi64 intrinsics

proc sll_epi64*(a: m256i, count: m128i): m256i
  {.importc: "_mm256_sll_epi64", header: "immintrin.h".}
  ## Exposes _mm256_sll_epi64 intrinsics

proc srai_epi16*(a: m256i, count: int32): m256i
  {.importc: "_mm256_srai_epi16", header: "immintrin.h".}
  ## Exposes _mm256_srai_epi16 intrinsics

proc sra_epi16*(a: m256i, count: m128i): m256i
  {.importc: "_mm256_sra_epi16", header: "immintrin.h".}
  ## Exposes _mm256_sra_epi16 intrinsics

proc srai_epi32*(a: m256i, count: int32): m256i
  {.importc: "_mm256_srai_epi32", header: "immintrin.h".}
  ## Exposes _mm256_srai_epi32 intrinsics

proc sra_epi32*(a: m256i, count: m128i): m256i
  {.importc: "_mm256_sra_epi32", header: "immintrin.h".}
  ## Exposes _mm256_sra_epi32 intrinsics

proc srli_epi16*(a: m256i, count: int32): m256i
  {.importc: "_mm256_srli_epi16", header: "immintrin.h".}
  ## Exposes _mm256_srli_epi16 intrinsics

proc srl_epi16*(a: m256i, count: m128i): m256i
  {.importc: "_mm256_srl_epi16", header: "immintrin.h".}
  ## Exposes _mm256_srl_epi16 intrinsics

proc srli_epi32*(a: m256i, count: int32): m256i
  {.importc: "_mm256_srli_epi32", header: "immintrin.h".}
  ## Exposes _mm256_srli_epi32 intrinsics

proc srl_epi32*(a: m256i, count: m128i): m256i
  {.importc: "_mm256_srl_epi32", header: "immintrin.h".}
  ## Exposes _mm256_srl_epi32 intrinsics

proc srli_epi64*(a: m256i, count: int32): m256i
  {.importc: "_mm256_srli_epi64", header: "immintrin.h".}
  ## Exposes _mm256_srli_epi64 intrinsics

proc srl_epi64*(a: m256i, count: m128i): m256i
  {.importc: "_mm256_srl_epi64", header: "immintrin.h".}
  ## Exposes _mm256_srl_epi64 intrinsics

proc sub_epi8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_sub_epi8", header: "immintrin.h".}
  ## Exposes _mm256_sub_epi8 intrinsics

proc sub_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_sub_epi16", header: "immintrin.h".}
  ## Exposes _mm256_sub_epi16 intrinsics

proc sub_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_sub_epi32", header: "immintrin.h".}
  ## Exposes _mm256_sub_epi32 intrinsics

proc sub_epi64*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_sub_epi64", header: "immintrin.h".}
  ## Exposes _mm256_sub_epi64 intrinsics

proc subs_epi8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_subs_epi8", header: "immintrin.h".}
  ## Exposes _mm256_subs_epi8 intrinsics

proc subs_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_subs_epi16", header: "immintrin.h".}
  ## Exposes _mm256_subs_epi16 intrinsics

proc subs_epu8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_subs_epu8", header: "immintrin.h".}
  ## Exposes _mm256_subs_epu8 intrinsics

proc subs_epu16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_subs_epu16", header: "immintrin.h".}
  ## Exposes _mm256_subs_epu16 intrinsics

proc unpackhi_epi8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_unpackhi_epi8", header: "immintrin.h".}
  ## Exposes _mm256_unpackhi_epi8 intrinsics

proc unpackhi_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_unpackhi_epi16", header: "immintrin.h".}
  ## Exposes _mm256_unpackhi_epi16 intrinsics

proc unpackhi_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_unpackhi_epi32", header: "immintrin.h".}
  ## Exposes _mm256_unpackhi_epi32 intrinsics

proc unpackhi_epi64*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_unpackhi_epi64", header: "immintrin.h".}
  ## Exposes _mm256_unpackhi_epi64 intrinsics

proc unpacklo_epi8*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_unpacklo_epi8", header: "immintrin.h".}
  ## Exposes _mm256_unpacklo_epi8 intrinsics

proc unpacklo_epi16*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_unpacklo_epi16", header: "immintrin.h".}
  ## Exposes _mm256_unpacklo_epi16 intrinsics

proc unpacklo_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_unpacklo_epi32", header: "immintrin.h".}
  ## Exposes _mm256_unpacklo_epi32 intrinsics

proc unpacklo_epi64*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_unpacklo_epi64", header: "immintrin.h".}
  ## Exposes _mm256_unpacklo_epi64 intrinsics

proc xor_si256*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_xor_si256", header: "immintrin.h".}
  ## Exposes _mm256_xor_si256 intrinsics

proc stream_load_si256*(V: ptr m256i): m256i
  {.importc: "_mm256_stream_load_si256", header: "immintrin.h".}
  ## Exposes _mm256_stream_load_si256 intrinsics

proc broadcastss_ps*(X: m128): m128
  {.importc: "_mm_broadcastss_ps", header: "immintrin.h".}
  ## Exposes _mm_broadcastss_ps intrinsics

proc broadcastss_ps_256*(X: m128): m256
  {.importc: "_mm256_broadcastss_ps", header: "immintrin.h".}
  ## Exposes _mm256_broadcastss_ps intrinsics

proc broadcastsd_pd*(X: m128d): m256d
  {.importc: "_mm256_broadcastsd_pd", header: "immintrin.h".}
  ## Exposes _mm256_broadcastsd_pd intrinsics

proc broadcastsi128_si256*(X: m128i): m256i
  {.importc: "_mm256_broadcastsi128_si256", header: "immintrin.h".}
  ## Exposes _mm256_broadcastsi128_si256 intrinsics

proc broadcastb_epi8_256*(X: m128i): m256i
  {.importc: "_mm256_broadcastb_epi8", header: "immintrin.h".}
  ## Exposes _mm256_broadcastb_epi8 intrinsics

proc broadcastw_epi16_256*(X: m128i): m256i
  {.importc: "_mm256_broadcastw_epi16", header: "immintrin.h".}
  ## Exposes _mm256_broadcastw_epi16 intrinsics

proc broadcastd_epi32_256*(X: m128i): m256i
  {.importc: "_mm256_broadcastd_epi32", header: "immintrin.h".}
  ## Exposes _mm256_broadcastd_epi32 intrinsics

proc broadcastq_epi64_256*(X: m128i): m256i
  {.importc: "_mm256_broadcastq_epi64", header: "immintrin.h".}
  ## Exposes _mm256_broadcastq_epi64 intrinsics

proc broadcastb_epi8*(X: m128i): m128i
  {.importc: "_mm_broadcastb_epi8", header: "immintrin.h".}
  ## Exposes _mm_broadcastb_epi8 intrinsics

proc broadcastw_epi16*(X: m128i): m128i
  {.importc: "_mm_broadcastw_epi16", header: "immintrin.h".}
  ## Exposes _mm_broadcastw_epi16 intrinsics

proc broadcastd_epi32*(X: m128i): m128i
  {.importc: "_mm_broadcastd_epi32", header: "immintrin.h".}
  ## Exposes _mm_broadcastd_epi32 intrinsics

proc broadcastq_epi64*(X: m128i): m128i
  {.importc: "_mm_broadcastq_epi64", header: "immintrin.h".}
  ## Exposes _mm_broadcastq_epi64 intrinsics

proc permutevar8x32_epi32*(a: m256i, b: m256i): m256i
  {.importc: "_mm256_permutevar8x32_epi32", header: "immintrin.h".}
  ## Exposes _mm256_permutevar8x32_epi32 intrinsics

proc permutevar8x32_ps*(a: m256, b: m256i): m256
  {.importc: "_mm256_permutevar8x32_ps", header: "immintrin.h".}
  ## Exposes _mm256_permutevar8x32_ps intrinsics

proc maskload_epi32*(X: ptr int32, M: m256i): m256i
  {.importc: "_mm256_maskload_epi32", header: "immintrin.h".}
  ## Exposes _mm256_maskload_epi32 intrinsics

proc maskload_epi64*(X: ptr int64, M: m256i): m256i
  {.importc: "_mm256_maskload_epi64", header: "immintrin.h".}
  ## Exposes _mm256_maskload_epi64 intrinsics

proc maskload_epi32*(X: ptr int32, M: m128i): m128i
  {.importc: "_mm_maskload_epi32", header: "immintrin.h".}
  ## Exposes _mm_maskload_epi32 intrinsics

proc maskload_epi64*(X: ptr int64, M: m128i): m128i
  {.importc: "_mm_maskload_epi64", header: "immintrin.h".}
  ## Exposes _mm_maskload_epi64 intrinsics

proc maskstore_epi32*(X: ptr int32, M: m256i, Y: m256i): void
  {.importc: "_mm256_maskstore_epi32", header: "immintrin.h".}
  ## Exposes _mm256_maskstore_epi32 intrinsics

proc maskstore_epi64*(X: ptr int64, M: m256i, Y: m256i): void
  {.importc: "_mm256_maskstore_epi64", header: "immintrin.h".}
  ## Exposes _mm256_maskstore_epi64 intrinsics

proc maskstore_epi32*(X: ptr int32, M: m128i, Y: m128i): void
  {.importc: "_mm_maskstore_epi32", header: "immintrin.h".}
  ## Exposes _mm_maskstore_epi32 intrinsics

proc maskstore_epi64*(X: ptr int64, M: m128i, Y: m128i): void
  {.importc: "_mm_maskstore_epi64", header: "immintrin.h".}
  ## Exposes _mm_maskstore_epi64 intrinsics

proc sllv_epi32*(X: m256i, Y: m256i): m256i
  {.importc: "_mm256_sllv_epi32", header: "immintrin.h".}
  ## Exposes _mm256_sllv_epi32 intrinsics

proc sllv_epi32*(X: m128i, Y: m128i): m128i
  {.importc: "_mm_sllv_epi32", header: "immintrin.h".}
  ## Exposes _mm_sllv_epi32 intrinsics

proc sllv_epi64*(X: m256i, Y: m256i): m256i
  {.importc: "_mm256_sllv_epi64", header: "immintrin.h".}
  ## Exposes _mm256_sllv_epi64 intrinsics

proc sllv_epi64*(X: m128i, Y: m128i): m128i
  {.importc: "_mm_sllv_epi64", header: "immintrin.h".}
  ## Exposes _mm_sllv_epi64 intrinsics

proc srav_epi32*(X: m256i, Y: m256i): m256i
  {.importc: "_mm256_srav_epi32", header: "immintrin.h".}
  ## Exposes _mm256_srav_epi32 intrinsics

proc srav_epi32*(X: m128i, Y: m128i): m128i
  {.importc: "_mm_srav_epi32", header: "immintrin.h".}
  ## Exposes _mm_srav_epi32 intrinsics

proc srlv_epi32*(X: m256i, Y: m256i): m256i
  {.importc: "_mm256_srlv_epi32", header: "immintrin.h".}
  ## Exposes _mm256_srlv_epi32 intrinsics

proc srlv_epi32*(X: m128i, Y: m128i): m128i
  {.importc: "_mm_srlv_epi32", header: "immintrin.h".}
  ## Exposes _mm_srlv_epi32 intrinsics

proc srlv_epi64*(X: m256i, Y: m256i): m256i
  {.importc: "_mm256_srlv_epi64", header: "immintrin.h".}
  ## Exposes _mm256_srlv_epi64 intrinsics

proc srlv_epi64*(X: m128i, Y: m128i): m128i
  {.importc: "_mm_srlv_epi64", header: "immintrin.h".}
  ## Exposes _mm_srlv_epi64 intrinsics

proc mask_i32gather_pd*(def_vals: m128d, base: ptr float64, vindex: m128i, vmask: m128d, scale: int32): m128d
  {.importc: "_mm_mask_i32gather_pd", header: "immintrin.h".}
  ## Exposes _mm_mask_i32gather_pd intrinsics

proc mask_i32gather_pd*(def_vals: m256d, base: ptr float64, vindex: m128i, vmask: m256d, scale: int32): m256d
  {.importc: "_mm256_mask_i32gather_pd", header: "immintrin.h".}
  ## Exposes _mm256_mask_i32gather_pd intrinsics

proc i32gather_pd*(base: ptr float64, vindex: m128i, scale: int32): m128d
  {.importc: "_mm_i32gather_pd", header: "immintrin.h".}
  ## Exposes _mm_i32gather_pd intrinsics

proc i32gather_pd_256*(base: ptr float64, vindex: m128i, scale: int32): m256d
  {.importc: "_mm256_i32gather_pd", header: "immintrin.h".}
  ## Exposes _mm256_i32gather_pd intrinsics

proc mask_i64gather_pd*(def_vals: m128d, base: ptr float64, vindex: m128i, vmask: m128d, scale: int32): m128d
  {.importc: "_mm_mask_i64gather_pd", header: "immintrin.h".}
  ## Exposes _mm_mask_i64gather_pd intrinsics

proc mask_i64gather_pd*(def_vals: m256d, base: ptr float64, vindex: m256i, vmask: m256d, scale: int32): m256d
  {.importc: "_mm256_mask_i64gather_pd", header: "immintrin.h".}
  ## Exposes _mm256_mask_i64gather_pd intrinsics

proc i64gather_pd*(base: ptr float64, vindex: m128i, scale: int32): m128d
  {.importc: "_mm_i64gather_pd", header: "immintrin.h".}
  ## Exposes _mm_i64gather_pd intrinsics

proc mask_i32gather_ps*(def_vals: m128, base: ptr float32, vindex: m128i, vmask: m128, scale: int32): m128
  {.importc: "_mm_mask_i32gather_ps", header: "immintrin.h".}
  ## Exposes _mm_mask_i32gather_ps intrinsics

proc mask_i32gather_ps*(def_vals: m256, base: ptr float32, vindex: m256i, vmask: m256, scale: int32): m256
  {.importc: "_mm256_mask_i32gather_ps", header: "immintrin.h".}
  ## Exposes _mm256_mask_i32gather_ps intrinsics

proc mask_i64gather_ps*(src: m128, base: ptr float32, vindex: m128i, mask: m128, scale: int32): m128
  {.importc: "_mm_mask_i64gather_ps", header: "immintrin.h".}
  ## Exposes _mm_mask_i64gather_ps intrinsics

proc mask_i32gather_epi32*(def_vals: m128i, base: ptr int32, vindex: m128i, vmask: m128i, scale: int32): m128i
  {.importc: "_mm_mask_i32gather_epi32", header: "immintrin.h".}
  ## Exposes _mm_mask_i32gather_epi32 intrinsics

proc mask_i32gather_epi32*(def_vals: m256i, base: ptr int32, vindex: m256i, vmask: m256i, scale: int32): m256i
  {.importc: "_mm256_mask_i32gather_epi32", header: "immintrin.h".}
  ## Exposes _mm256_mask_i32gather_epi32 intrinsics

proc i32gather_epi32*(base: ptr int32, vindex: m128i, scale: int32): m128i
  {.importc: "_mm_i32gather_epi32", header: "immintrin.h".}
  ## Exposes _mm_i32gather_epi32 intrinsics

proc i32gather_epi32*(base: ptr int32, vindex: m256i, scale: int32): m256i
  {.importc: "_mm256_i32gather_epi32", header: "immintrin.h".}
  ## Exposes _mm256_i32gather_epi32 intrinsics

proc mask_i32gather_epi64*(def_vals: m128i, base: ptr int64, vindex: m128i, vmask: m128i, scale: int32): m128i
  {.importc: "_mm_mask_i32gather_epi64", header: "immintrin.h".}
  ## Exposes _mm_mask_i32gather_epi64 intrinsics

proc mask_i32gather_epi64*(def_vals: m256i, base: ptr int64, vindex: m128i, vmask: m256i, scale: int32): m256i
  {.importc: "_mm256_mask_i32gather_epi64", header: "immintrin.h".}
  ## Exposes _mm256_mask_i32gather_epi64 intrinsics

proc i32gather_epi64*(base: ptr int64, vindex: m128i, scale: int32): m128i
  {.importc: "_mm_i32gather_epi64", header: "immintrin.h".}
  ## Exposes _mm_i32gather_epi64 intrinsics

proc i32gather_epi64_256*(base: ptr int64, vindex: m128i, scale: int32): m256i
  {.importc: "_mm256_i32gather_epi64", header: "immintrin.h".}
  ## Exposes _mm256_i32gather_epi64 intrinsics

proc mask_i64gather_epi32*(def_vals: m128i, base: ptr int32, vindex: m128i, vmask: m128i, scale: int32): m128i
  {.importc: "_mm_mask_i64gather_epi32", header: "immintrin.h".}
  ## Exposes _mm_mask_i64gather_epi32 intrinsics

proc mask_i64gather_epi32*(def_vals: m128i, base: ptr int32, vindex: m256i, vmask: m128i, scale: int32): m128i
  {.importc: "_mm256_mask_i64gather_epi32", header: "immintrin.h".}
  ## Exposes _mm256_mask_i64gather_epi32 intrinsics

proc i64gather_epi32*(base: ptr int32, vindex: m128i, scale: int32): m128i
  {.importc: "_mm_i64gather_epi32", header: "immintrin.h".}
  ## Exposes _mm_i64gather_epi32 intrinsics

proc i64gather_epi32*(base: ptr int32, vindex: m256i, scale: int32): m128i
  {.importc: "_mm256_i64gather_epi32", header: "immintrin.h".}
  ## Exposes _mm256_i64gather_epi32 intrinsics

proc mask_i64gather_epi64*(def_vals: m128i, base: ptr int64, vindex: m128i, vmask: m128i, scale: int32): m128i
  {.importc: "_mm_mask_i64gather_epi64", header: "immintrin.h".}
  ## Exposes _mm_mask_i64gather_epi64 intrinsics

proc mask_i64gather_epi64*(def_vals: m256i, base: ptr int64, vindex: m256i, vmask: m256i, scale: int32): m256i
  {.importc: "_mm256_mask_i64gather_epi64", header: "immintrin.h".}
  ## Exposes _mm256_mask_i64gather_epi64 intrinsics

proc i64gather_epi64*(base: ptr int64, vindex: m128i, scale: int32): m128i
  {.importc: "_mm_i64gather_epi64", header: "immintrin.h".}
  ## Exposes _mm_i64gather_epi64 intrinsics

proc i64gather_epi64*(base: ptr int64, vindex: m256i, scale: int32): m256i
  {.importc: "_mm256_i64gather_epi64", header: "immintrin.h".}
  ## Exposes _mm256_i64gather_epi64 intrinsics

proc alignr_epi8*(a: m256i, b: m256i, c: int32): m256i
  {.importc: "_mm256_alignr_epi8", header: "immintrin.h".}
  ## Exposes _mm256_alignr_epi8 intrinsics

proc blend_epi16*(a: m256i, b: m256i, c: int32): m256i
  {.importc: "_mm256_blend_epi16", header: "immintrin.h".}
  ## Exposes _mm256_blend_epi16 intrinsics

proc shuffle_epi32*(a: m256i, b: int32): m256i
  {.importc: "_mm256_shuffle_epi32", header: "immintrin.h".}
  ## Exposes _mm256_shuffle_epi32 intrinsics

proc shufflehi_epi16*(a: m256i, b: int32): m256i
  {.importc: "_mm256_shufflehi_epi16", header: "immintrin.h".}
  ## Exposes _mm256_shufflehi_epi16 intrinsics

proc shufflelo_epi16*(a: m256i, b: int32): m256i
  {.importc: "_mm256_shufflelo_epi16", header: "immintrin.h".}
  ## Exposes _mm256_shufflelo_epi16 intrinsics

proc slli_si256*(a: m256i, b: int32): m256i
  {.importc: "_mm256_slli_si256", header: "immintrin.h".}
  ## Exposes _mm256_slli_si256 intrinsics

proc srli_si256*(a: m256i, b: int32): m256i
  {.importc: "_mm256_srli_si256", header: "immintrin.h".}
  ## Exposes _mm256_srli_si256 intrinsics

proc blend_epi32*(a: m128i, b: m128i, c: int32): m128i
  {.importc: "_mm_blend_epi32", header: "immintrin.h".}
  ## Exposes _mm_blend_epi32 intrinsics

proc blend_epi32*(a: m256i, b: m256i, c: int32): m256i
  {.importc: "_mm256_blend_epi32", header: "immintrin.h".}
  ## Exposes _mm256_blend_epi32 intrinsics

proc permute4x64_pd*(a: m256d, b: int32): m256d
  {.importc: "_mm256_permute4x64_pd", header: "immintrin.h".}
  ## Exposes _mm256_permute4x64_pd intrinsics

proc permute4x64_epi64*(a: m256i, b: int32): m256i
  {.importc: "_mm256_permute4x64_epi64", header: "immintrin.h".}
  ## Exposes _mm256_permute4x64_epi64 intrinsics

proc permute2x128_si256*(a: m256i, b: m256i, c: int32): m256i
  {.importc: "_mm256_permute2x128_si256", header: "immintrin.h".}
  ## Exposes _mm256_permute2x128_si256 intrinsics

proc extracti128_si256*(a: m256i, b: int32): m128i
  {.importc: "_mm256_extracti128_si256", header: "immintrin.h".}
  ## Exposes _mm256_extracti128_si256 intrinsics

proc inserti128_si256*(a: m256i, b: m128i, c: int32): m256i
  {.importc: "_mm256_inserti128_si256", header: "immintrin.h".}
  ## Exposes _mm256_inserti128_si256 intrinsics

