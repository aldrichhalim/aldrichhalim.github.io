---
layout: page
title: Investing App using React Native
description: Cross-platform mobile application using React Native for Mutual Fund Investing
img: /assets/img/9.jpg
category: work
---

# Makmur.id Cross-platform Mobile App

_Duration: [August 2019 - July 2020], Deployed to the App Store and Play Store on February 2021_

![Project Banner Image](/assets/img/9.jpg)

## Overview

`Makmur.id` is a Jakarta-based fintech startup that transformed mutual fund investing in Indonesia through innovative digital solutions. The platform makes investing accessible to beginners by offering various risk levels and professional management by Asset Managers – all through an intuitive mobile experience. Recognized as 2023's fastest-growing investment platform, Makmur has partnered with Financial Authorities on key initiatives to strengthen Indonesia's fintech ecosystem, helping thousands of everyday Indonesians begin their investment journey with confidence.

## The Challenge

_What problem was I trying to solve?_

- **Business Context**: The need of a fast, intuitive, and user-friendly mobile application for investors to manage their portfolio
- **Technical Pain Points**: Displaying large financial data in user's mobile screen while keeping smooth performance and snappy user experience
- **Key Constraints**: We were a small team of 2 frontend engineers and 2 backend engineers. We gave ourselves 1 year to finish the first iteration, then we need to present to the Financial Authorities for acquiring license.
- **Scale Considerations**: Mutual fund prices are updated daily. Our system must handle the price movement of 100+ products and compute user's portfolio position (unrealized G/L, cashflow, etc.) at the end of every business day. Then, we send notification to the users and refresh frontend's data.

## Solution Approach

_How did I tackle this challenge?_

- **Architecture**: Describe the high-level architecture using generalized diagrams that showcase patterns without revealing proprietary implementations
- **Decision Process**: Explain your evaluation of potential solutions and why you chose your specific approach
- **Technical Design**: Outline the system design using abstracted diagrams and explanations of components

```
// Sanitized code example showing pattern implementation
// (with generic variable names and abstracted business logic)
function processTransaction(paymentData) {
  // Validate input
  const validationResult = validatePaymentData(paymentData);

  if (!validationResult.isValid) {
    return handleValidationError(validationResult.errors);
  }

  // Attempt transaction with retry logic
  return withRetry(() => {
    const gatewayResponse = submitToPaymentGateway(paymentData);
    return processGatewayResponse(gatewayResponse);
  }, MAX_RETRY_ATTEMPTS);
}
```

## Technologies Used

_What tools and technologies powered this solution?_

- **Languages**: TypeScript, Python, etc.
- **Frameworks/Libraries**: React, Express, Redis, etc.
- **Infrastructure**: AWS (specific services), Docker, Kubernetes, etc.
- **Data Storage**: MongoDB, PostgreSQL, S3, etc.
- **Development Tools**: Git, CI/CD pipelines, testing frameworks, etc.

## Key Technical Challenges

_What were the most interesting problems I solved?_

### Challenge 1: [Brief Title]

- Description of the challenge
- Your approach to solving it
- Technical concepts/patterns applied (without revealing proprietary details)

### Challenge 2: [Brief Title]

- Description of the challenge
- Your approach to solving it
- Technical concepts/patterns applied

## Implementation Strategy

_How did I execute the solution?_

- **Phased Approach**: Describe your implementation phases and rollout strategy
- **Testing Strategy**: Explain your approach to ensuring quality and reliability
- **Monitoring & Observability**: Describe how you tracked performance and detected issues
- **Cross-functional Collaboration**: Note how you worked with other teams/departments

## Results & Impact

_What was achieved?_

- **Performance Metrics**: Include before/after metrics using percentages rather than absolute values where needed
- **Business Impact**: Describe effects on user satisfaction, revenue, or other business metrics
- **Technical Improvements**: Detail improvements in system reliability, scalability, or maintainability
- **Recognition**: Mention any awards or recognition the project received (if applicable)

## Lessons Learned

_What would I do differently?_

- **Technical Insights**: Share 2-3 key technical lessons learned
- **Process Improvements**: Note any process changes that resulted from this project
- **What Worked Well**: Highlight approaches that were particularly successful
- **Future Considerations**: Brief thoughts on how this project could evolve or what you'd do differently next time

## Related Skills & Technologies

_What skills did this project demonstrate?_

- System design and architecture
- Distributed systems
- Performance optimization
- API design
- [Other relevant skills]

---

_Note: This project description respects the confidentiality of proprietary code and business information while accurately representing the technical challenges and solutions implemented._
