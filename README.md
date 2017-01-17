## Swift Polygon View using CAShapeLayer

This is an demonstration of using `CAShapeLayer`/`UIBezierPath` to create a view that contains a polygon in Swift.

The basic idea is to create a `CAShapeLayer` and add it to the `CALayer` hierarchy once, but then update the `path` for that shape layer whenever the view changes size (either in `layoutSubviews` in `UIView` class or `viewDidLayoutSubviews` in `UIViewController`). Personally, I like to do this stuff as an `@IBDesignable` view subclass, like I have here, because that way I can use it in a storyboard (just drag a a simple "View" object onto the scene and then set its base class to be `PolygonView` (or whatever you call it here). The only trick with using designables is that Apple advises putting them in a separate framework target, like I have here.

But none of this `IBDesignable` stuff is critical to the question at hand, namely just use `CAShapeLayer` and update its `path` when the view changes size.

This is not intended as an end-user library, but this is for illustrative purposes only.

See http://stackoverflow.com/a/41476105/1271826.

Developed in Swift 3 on Xcode 8.2.1 for iOS 10. But, the basic ideas are equally applicable for different versions of Swift and/or Objective-C. 

## License

Copyright &copy; 2017 Robert Ryan. All rights reserved.

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

--

16 January 2017
