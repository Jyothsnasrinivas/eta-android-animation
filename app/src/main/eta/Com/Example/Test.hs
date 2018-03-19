{-# LANGUAGE TypeOperators, TypeFamilies, FlexibleContexts #-}
module Com.Example.Test where

import Com.Example.Types

import Java

foreign export java "@static eta.android.Animator.animate"
  animate :: Activity -> Int -> IO ()
animate activity resourceId = java $ do
  view <- activity <.> findViewById resourceId
  applyRotationAnimation view

applyRotationAnimation :: View -> Java a ()
applyRotationAnimation view = do
  rotateAnimation <- newRotateAnimation 0.0 180.0
  rotateAnimation <.> (do setInterpolator =<< newLinearInterpolator
                          setRepeatCount _INFINITE
                          setDuration 10000)
  view <.> startAnimation rotateAnimation


