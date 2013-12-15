iOS Blur View
=============

iOS 7's blur effect for an entire UIView. Apple created iOS 7 with all of these wonderful blurred views, and yet left us without a way to use that blur effect on our own views. Taking matters into my own hands, I created a way -

Preview
=============
![Image1](https://raw.github.com/username/projectname/branch/path/to/img.png)

Trick of the trade, and How To Use
=============

Looking through what Apple did give me to use, I found and used an UIToolbar. Setting it as a sublayer of a view, clearing the view's background color, and resizing the toolbar gives the desired effect. Also, this implementation allows for changing the view's tint color and opacity

Using Storyboards
--------------
- Drag a UIView out to your Storyboard onto the desired view controller
- Set in the Utilities pane your custom class (for the UIView) to be JWBlurView
- Ctrl+drag to your view controller to create a property outlet for that new JWBlurView (named "blurView" in this example)

Creating Programmatically
--------------
- Create a property for that new JWBlurView (named "blurView" in this example)
- In ViewDidLoad or ViewWillAppear :
 ```
    // create a new blur view
    [self setBlurView:[JWBlurView new]];
    // set the frame to whatever you desire
    [[self blurView] setFrame:CGRectMake(0.0f,0.0f,200.0f,300.0f)];
    // optionally set the resizing mask(s)
    [[self blurView] setAutoresizingMask:UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight]; 
    // add the blur view as subview
    [self.view addSubview:[self blurView]];
```
  
Handy Instance Functions
--------------
 ```
    - (void) setBlurColor:(UIColor *)blurColor; // sets overall blurred view's tint color, if opacity > 0.0
    - (void) setBlurAlpha:(CGFloat)alphaValue;  // sets the view's opacity (blurred to solid)
 ```

Notes
--------------
- Open and free to use! I'd always appreciate a star for the repo if you use it though
- It requires an iOS 7 UIToolbar, which means...it will only work on iOS 7.
- If the opacity is set at 0 the tint color won't show. Adjust the opacity of the blur view, even just a little more than 0, for it to show the tint.
