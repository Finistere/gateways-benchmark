import { makeGraphQLRequest } from '../k6.shared.js'

export const options = {
  scenarios: {
    open_model: {
      executor: 'constant-arrival-rate',
      rate: 100,
      timeUnit: '1s',
      duration: '3s',
      preAllocatedVUs: 2,
    },
  },
};

export default function() {
  makeGraphQLRequest()
}

