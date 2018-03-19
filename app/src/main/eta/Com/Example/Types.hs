{-# LANGUAGE DataKinds, TypeFamilies, TypeOperators, FlexibleContexts #-}
module Com.Example.Types where

import Java
import Interop.Java.Lang

-- Start android.view.animation.RotateAnimation

data RotateAnimation = RotateAnimation @android.view.animation.RotateAnimation
  deriving Class

type instance Inherits RotateAnimation = '[Animation]

foreign import java unsafe setInterpolator
  :: (a <: Interpolator) => a -> Java RotateAnimation ()

foreign import java unsafe setRepeatCount :: Int -> Java RotateAnimation ()

foreign import java unsafe setDuration :: Int64 -> Java RotateAnimation ()

foreign import java unsafe "@static @field android.view.animation.Animation.INFINITE" _INFINITE
  :: Int

foreign import java unsafe "@static @field android.view.animation.Animation.RESTART" _RESTART
  :: Int

foreign import java unsafe "@static @field android.view.animation.Animation.REVERSE" _REVERSE
  :: Int

foreign import java unsafe "@static @field android.view.animation.Animation.START_ON_FIRST_FRAME"
  _START_ON_FIRST_FRAME :: Int

foreign import java unsafe "@static @field android.view.animation.Animation.ABSOLUTE" _ABSOLUTE
  :: Int

foreign import java unsafe "@static @field android.view.animation.Animation.RELATIVE_TO_SELF"
  _RELATIVE_TO_SELF :: Int

foreign import java unsafe "@static @field android.view.animation.Animation.RELATIVE_TO_PARENT"
  _RELATIVE_TO_PARENT :: Int

foreign import java unsafe "@static @field android.view.animation.Animation.ZORDER_BOTTOM" _ZORDER_BOTTOM
  :: Int

foreign import java unsafe "@static @field android.view.animation.Animation.ZORDER_NORMAL" _ZORDER_NORMAL
  :: Int

foreign import java unsafe "@static @field android.view.animation.Animation.ZORDER_TOP" _ZORDER_TOP
  :: Int

foreign import java unsafe "@new" newRotateAnimation :: Float -> Float -> Java a RotateAnimation

foreign import java unsafe "@new" newRotateAnimation1 ::
  Float -> Float -> Float -> Float -> Java a RotateAnimation

foreign import java unsafe "@new" newRotateAnimation2 ::
  Float -> Float -> Int -> Float -> Int -> Float -> Java a RotateAnimation

-- End android.view.animation.RotateAnimation

-- Start android.view.animation.Animation

data Animation = Animation @android.view.animation.Animation
  deriving Class

type instance Inherits Animation = '[Object, Cloneable]

-- End android.view.animation.Animation

-- Start android.view.animation.Interpolator

data Interpolator = Interpolator @android.view.animation.Interpolator
  deriving Class

type instance Inherits Interpolator = '[TimeInterpolator]

-- End android.view.animation.Interpolator

-- Start android.view.TimeInterpolator

data TimeInterpolator = TimeInterpolatorI @android.animation.TimeInterpolator
  deriving Class

-- End android.view.TimeInterpolator

-- Start android.os.Handler

data Handler = Handler @android.os.Handler
  deriving Class

foreign import java unsafe postDelayed :: Runnable -> Int64 -> Java Handler Bool

-- End android.os.Handler

-- Start android.view.View

data View = View @android.view.View
  deriving Class

type instance Inherits View = '[DrawableCallback, KeyEventCallback, AccessibilityEventSource]

foreign import java unsafe startAnimation :: (a <: Animation) => a -> Java View ()

foreign import java unsafe setAnimation :: Animation -> Java View ()

-- End android.view.View

-- Start android.graphics.drawable.Drawable.Callback

data DrawableCallback = DrawableCallback @android.graphics.drawable.Drawable$Callback
  deriving Class

-- foreign import java unsafe "@wrapper invalidateDrawable,scheduleDrawable,unscheduleDrawable" mkDrawableCallback
--   :: (Drawable -> Java DrawableCallback ())
--   -> (Drawable -> Runnable -> Int64 -> Java DrawableCallback ())
--   -> (Drawable -> Runnable -> Java DrawableCallback ())
--   -> DrawableCallback

-- End android.graphics.drawable.Drawable.Callback

-- Start android.view.KeyEvent.Callback

data KeyEventCallback = KeyEventCallback @android.view.KeyEvent$Callback
  deriving Class

-- foreign import java unsafe "@wrapper onKeyDown,onKeyLongPress,onKeyMultiple,onKeyUp" mkKeyEventCallback
--   :: (Int -> KeyEvent -> Java KeyEventCallback Bool)
--   -> (Int -> KeyEvent -> Java KeyEventCallback Bool)
--   -> (Int -> Int -> KeyEvent -> Java KeyEventCallback Bool)
--   -> (Int -> KeyEvent -> Java KeyEventCallback Bool)
--   -> KeyEventCallback

-- End android.view.KeyEvent.Callback

-- Start android.view.accessibility.AccessibilityEventSource

data AccessibilityEventSource = AccessibilityEventSource @android.view.accessibility.AccessibilityEventSource
  deriving Class

-- End android.view.accessibility.AccessibilityEventSource

-- Start android.view.animation.LinearInterpolator

data LinearInterpolator = LinearInterpolator @android.view.animation.LinearInterpolator
  deriving Class

type instance Inherits LinearInterpolator = '[BaseInterpolator]

foreign import java unsafe "@new" newLinearInterpolator
  :: Java a LinearInterpolator

-- End android.view.animation.LinearInterpolator

-- Start android.view.animation.BaseInterpolator

data BaseInterpolator = BaseInterpolator @android.view.animation.BaseInterpolator
  deriving Class

type instance Inherits BaseInterpolator = '[Object, Interpolator]

-- End android.view.animation.BaseInterpolator

-- Start android.view.animation.Transformation

data Transformation = Transformation @android.view.animation.Transformation
  deriving Class

-- End android.view.animation.Transformation

-- Start android.app.Activity
data Activity = Context @android.app.Activity
  deriving Class

foreign import java unsafe findViewById :: (a <: View) => Int -> Java Activity a
-- End android.app.Activity
