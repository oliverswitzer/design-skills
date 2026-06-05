# Postel's Law

> Be liberal in what you accept, and conservative in what you send.

**Source:** [lawsofux.com/postels-law/](https://lawsofux.com/postels-law/)

---

## Overview

Postel’s Law (also known as the Robustness Principle) was formulated by Jon Postel, an early pioneer of the Internet. The Law is a design guideline for software, specifically in regards to TCP and networks, and states “TCP implementations should follow a general principle of robustness: be conservative in what you do, be liberal in what you accept from others”. In other words, programs that send messages to other machines (or to other programs on the same machine) should conform completely to the specifications, but programs that receive messages should accept non-conformant input as long as the meaning is clear.

The tendency for people to get overwhelmed when they are presented with a large number of options, often used interchangeably with the term paradox of choice.

The time it takes to make a decision increases with the number and complexity of choices.

People will perceive and interpret ambiguous or complex images as the simplest form possible, because it is the interpretation that requires the least cognitive effort of us.


## Key Takeaways

- Be empathetic to, flexible about, and tolerant of any of the various actions the user could take or any input they might provide.
- Anticipate virtually anything in terms of input, access, and capability while providing a reliable and accessible interface.
- The more we can anticipate and plan for in design, the more resilient the design will be.
- Accept variable input from users, translating that input to meet your requirements, defining boundaries for input, and providing clear feedback to the user.

## When to Apply This Law

- Designing form inputs — accept multiple formats for dates, phone numbers, and similar fields
- Building APIs or data exchange layers where input variance is expected
- Reducing friction by accepting multiple input conventions gracefully

## Choice Overload

The tendency for people to get overwhelmed when they are presented with a large number of options, often used interchangeably with the term paradox of choice.


## Hick’s Law

The time it takes to make a decision increases with the number and complexity of choices.


## Law of Prägnanz

People will perceive and interpret ambiguous or complex images as the simplest form possible, because it is the interpretation that requires the least cognitive effort of us.


## Design Implications

Understanding **Postel's Law** helps designers make decisions that align with how users naturally think and behave. 
Apply this principle during design reviews, when evaluating user research findings, or when simplifying complex interaction flows.
