module Stratosphere.QuickSight.Dashboard.GridLayoutScreenCanvasSizeOptionsProperty (
        GridLayoutScreenCanvasSizeOptionsProperty(..),
        mkGridLayoutScreenCanvasSizeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GridLayoutScreenCanvasSizeOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-gridlayoutscreencanvassizeoptions.html>
    GridLayoutScreenCanvasSizeOptionsProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-gridlayoutscreencanvassizeoptions.html#cfn-quicksight-dashboard-gridlayoutscreencanvassizeoptions-optimizedviewportwidth>
                                               optimizedViewPortWidth :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-gridlayoutscreencanvassizeoptions.html#cfn-quicksight-dashboard-gridlayoutscreencanvassizeoptions-resizeoption>
                                               resizeOption :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGridLayoutScreenCanvasSizeOptionsProperty ::
  Value Prelude.Text -> GridLayoutScreenCanvasSizeOptionsProperty
mkGridLayoutScreenCanvasSizeOptionsProperty resizeOption
  = GridLayoutScreenCanvasSizeOptionsProperty
      {haddock_workaround_ = (), resizeOption = resizeOption,
       optimizedViewPortWidth = Prelude.Nothing}
instance ToResourceProperties GridLayoutScreenCanvasSizeOptionsProperty where
  toResourceProperties GridLayoutScreenCanvasSizeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GridLayoutScreenCanvasSizeOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResizeOption" JSON..= resizeOption]
                           (Prelude.catMaybes
                              [(JSON..=) "OptimizedViewPortWidth"
                                 Prelude.<$> optimizedViewPortWidth]))}
instance JSON.ToJSON GridLayoutScreenCanvasSizeOptionsProperty where
  toJSON GridLayoutScreenCanvasSizeOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResizeOption" JSON..= resizeOption]
              (Prelude.catMaybes
                 [(JSON..=) "OptimizedViewPortWidth"
                    Prelude.<$> optimizedViewPortWidth])))
instance Property "OptimizedViewPortWidth" GridLayoutScreenCanvasSizeOptionsProperty where
  type PropertyType "OptimizedViewPortWidth" GridLayoutScreenCanvasSizeOptionsProperty = Value Prelude.Text
  set newValue GridLayoutScreenCanvasSizeOptionsProperty {..}
    = GridLayoutScreenCanvasSizeOptionsProperty
        {optimizedViewPortWidth = Prelude.pure newValue, ..}
instance Property "ResizeOption" GridLayoutScreenCanvasSizeOptionsProperty where
  type PropertyType "ResizeOption" GridLayoutScreenCanvasSizeOptionsProperty = Value Prelude.Text
  set newValue GridLayoutScreenCanvasSizeOptionsProperty {..}
    = GridLayoutScreenCanvasSizeOptionsProperty
        {resizeOption = newValue, ..}