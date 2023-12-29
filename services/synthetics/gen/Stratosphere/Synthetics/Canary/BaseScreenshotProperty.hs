module Stratosphere.Synthetics.Canary.BaseScreenshotProperty (
        BaseScreenshotProperty(..), mkBaseScreenshotProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BaseScreenshotProperty
  = BaseScreenshotProperty {ignoreCoordinates :: (Prelude.Maybe (ValueList Prelude.Text)),
                            screenshotName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBaseScreenshotProperty ::
  Value Prelude.Text -> BaseScreenshotProperty
mkBaseScreenshotProperty screenshotName
  = BaseScreenshotProperty
      {screenshotName = screenshotName,
       ignoreCoordinates = Prelude.Nothing}
instance ToResourceProperties BaseScreenshotProperty where
  toResourceProperties BaseScreenshotProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.BaseScreenshot",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ScreenshotName" JSON..= screenshotName]
                           (Prelude.catMaybes
                              [(JSON..=) "IgnoreCoordinates" Prelude.<$> ignoreCoordinates]))}
instance JSON.ToJSON BaseScreenshotProperty where
  toJSON BaseScreenshotProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ScreenshotName" JSON..= screenshotName]
              (Prelude.catMaybes
                 [(JSON..=) "IgnoreCoordinates" Prelude.<$> ignoreCoordinates])))
instance Property "IgnoreCoordinates" BaseScreenshotProperty where
  type PropertyType "IgnoreCoordinates" BaseScreenshotProperty = ValueList Prelude.Text
  set newValue BaseScreenshotProperty {..}
    = BaseScreenshotProperty
        {ignoreCoordinates = Prelude.pure newValue, ..}
instance Property "ScreenshotName" BaseScreenshotProperty where
  type PropertyType "ScreenshotName" BaseScreenshotProperty = Value Prelude.Text
  set newValue BaseScreenshotProperty {..}
    = BaseScreenshotProperty {screenshotName = newValue, ..}