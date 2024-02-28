import { uncheckedGraphQLRequest, handleBenchmarkSummary } from '../k6.shared.js'

const vus = __ENV.BENCH_VUS ? parseInt(__ENV.BENCH_VUS) : 100;
const max_vus = __ENV.BENCH_MAX_VUS ? parseInt(__ENV.BENCH_MAX_VUS) : 20;
const time = __ENV.BENCH_OVER_TIME || "30s";

export const options = {
  // vus: vus,
  scenarios: {
    open_model: {
      executor: 'constant-arrival-rate',
      rate: vus,
      timeUnit: '1s',
      duration: time,
      preAllocatedVUs: max_vus,
    },
  },
};

export default function() {
  uncheckedGraphQLRequest()
}

export function handleSummary(data) {
  return handleBenchmarkSummary(data, { vus, time });
}
