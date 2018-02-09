module Com.Example.Test where

import Java

data Context = Context @android.content.Context
data Toast   = Toast   @android.widget.Toast

foreign import java unsafe "@static android.widget.Toast.makeText"
  makeToast :: (a <: CharSequence) => Context -> a -> Int -> IO Toast

foreign import java unsafe "show"
  showToast :: Toast -> IO ()

foreign import java unsafe "@static @field android.widget.Toast.LENGTH_LONG"
  longDuration :: Int

foreign export java "@static com.example.Test.displayToast"
  displayToast :: Context -> JString -> IO ()
displayToast context string = do
  toast <- makeToast context string longDuration
  showToast toast

