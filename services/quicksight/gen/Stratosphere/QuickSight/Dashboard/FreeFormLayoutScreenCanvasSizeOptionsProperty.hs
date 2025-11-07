module Stratosphere.QuickSight.Dashboard.FreeFormLayoutScreenCanvasSizeOptionsProperty (
        FreeFormLayoutScreenCanvasSizeOptionsProperty(..),
        mkFreeFormLayoutScreenCanvasSizeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FreeFormLayoutScreenCanvasSizeOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-freeformlayoutscreencanvassizeoptions.html>
    FreeFormLayoutScreenCanvasSizeOptionsProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-freeformlayoutscreencanvassizeoptions.html#cfn-quicksight-dashboard-freeformlayoutscreencanvassizeoptions-optimizedviewportwidth>
                                                   optimizedViewPortWidth :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFreeFormLayoutScreenCanvasSizeOptionsProperty ::
  Value Prelude.Text -> FreeFormLayoutScreenCanvasSizeOptionsProperty
mkFreeFormLayoutScreenCanvasSizeOptionsProperty
  optimizedViewPortWidth
  = FreeFormLayoutScreenCanvasSizeOptionsProperty
      {haddock_workaround_ = (),
       optimizedViewPortWidth = optimizedViewPortWidth}
instance ToResourceProperties FreeFormLayoutScreenCanvasSizeOptionsProperty where
  toResourceProperties
    FreeFormLayoutScreenCanvasSizeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FreeFormLayoutScreenCanvasSizeOptions",
         supportsTags = Prelude.False,
         properties = ["OptimizedViewPortWidth"
                         JSON..= optimizedViewPortWidth]}
instance JSON.ToJSON FreeFormLayoutScreenCanvasSizeOptionsProperty where
  toJSON FreeFormLayoutScreenCanvasSizeOptionsProperty {..}
    = JSON.object
        ["OptimizedViewPortWidth" JSON..= optimizedViewPortWidth]
instance Property "OptimizedViewPortWidth" FreeFormLayoutScreenCanvasSizeOptionsProperty where
  type PropertyType "OptimizedViewPortWidth" FreeFormLayoutScreenCanvasSizeOptionsProperty = Value Prelude.Text
  set newValue FreeFormLayoutScreenCanvasSizeOptionsProperty {..}
    = FreeFormLayoutScreenCanvasSizeOptionsProperty
        {optimizedViewPortWidth = newValue, ..}