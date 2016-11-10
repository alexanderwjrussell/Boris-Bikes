# Boris Bikes

## Inspiration for the task

Let's go back several years, to the days when there were no Boris Bikes. Imagine that you're a junior developer (that was easy). Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

## User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```
#### Solution

Objects	        | Messages
---             | ---
Person          |
Docking Station | release_bike
```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```
#### Solution

Objects	        | Messages
---             | ---
Person          |
Bike            | working?
