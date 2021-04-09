# animation

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Animation:

There are two types of animation.

    1. Explicit Animations
        - Give us more control(Using animation controller), But more complex to create.
        - If the animation repeats over and over without stoping or requires granular control we would use an explicit animation with   an animation controller.

    2. Implicit Animations
        - Give us less controll, but are easier to create using either custom or built-in animated widgets.

TweenAnimationBuilder:

- TweenAnimationBuilder is a way to create custom implicit animations and they allow us to define our own tweens with custom start and end points.

Hero animation:

- Hero animation gives us a way to animate widgets from one screen to the next as long as those widgets are present on both.


Animation Controller:

- Animation controller give us more granular of fine control over our animations and they are better suited to more complex animations or any kind of animation the flutter does not provide an out of the box solution for.
    - Ticker: A ticker is a bit like a clock that ticks for our animation over and over so that for every tick we get a new animation value from point A to point B. 
    - The vsync property allows us to sync this controller that we have with a ticker. The ticker we sync it with will be our stateful widget itself. So only when the widget tree is active on a screen will be animation tick.
    - Allow our widget to act as a ticker we need to use a mixin.
    - late: late has another great application for your Flutter code: you can remove many of your initState/constructor calls! This is because late runs “lazily”, which means it is not run at all until it is referenced the first time.
    - _controller.forword() start the animation controller for us.
    - Listener: Automatically the animatin controller is split out values from zero to one. That means the default tween essentially is zero to one. We can listen whatever the value it splits out when it does split out a new value by adding a listener to the controller.
    - Status Listener: _controller.addStatusListener provide us the informatin about the controller status is complete or dismissed.
    - When we exit the animated page we need to dispose the animation controller.

    - Tween Sequence: We could have a sequence of three or four tweens lined up next to each other and then when we run the animation it's going to go from one tween to the next to the next.

    - [Curves class](https://api.flutter.dev/flutter/animation/Curves-class.html)
    - We can add a curve animation property to any built-in animation widget like animated opacity,  animated position, animated container, tween animation builder ect.