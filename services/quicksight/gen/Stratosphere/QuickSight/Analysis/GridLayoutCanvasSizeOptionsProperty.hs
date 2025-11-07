module Stratosphere.QuickSight.Analysis.GridLayoutCanvasSizeOptionsProperty (
        module Exports, GridLayoutCanvasSizeOptionsProperty(..),
        mkGridLayoutCanvasSizeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GridLayoutScreenCanvasSizeOptionsProperty as Exports
import Stratosphere.ResourceProperties
data GridLayoutCanvasSizeOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gridlayoutcanvassizeoptions.html>
    GridLayoutCanvasSizeOptionsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gridlayoutcanvassizeoptions.html#cfn-quicksight-analysis-gridlayoutcanvassizeoptions-screencanvassizeoptions>
                                         screenCanvasSizeOptions :: (Prelude.Maybe GridLayoutScreenCanvasSizeOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGridLayoutCanvasSizeOptionsProperty ::
  GridLayoutCanvasSizeOptionsProperty
mkGridLayoutCanvasSizeOptionsProperty
  = GridLayoutCanvasSizeOptionsProperty
      {haddock_workaround_ = (),
       screenCanvasSizeOptions = Prelude.Nothing}
instance ToResourceProperties GridLayoutCanvasSizeOptionsProperty where
  toResourceProperties GridLayoutCanvasSizeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GridLayoutCanvasSizeOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScreenCanvasSizeOptions"
                              Prelude.<$> screenCanvasSizeOptions])}
instance JSON.ToJSON GridLayoutCanvasSizeOptionsProperty where
  toJSON GridLayoutCanvasSizeOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScreenCanvasSizeOptions"
                 Prelude.<$> screenCanvasSizeOptions]))
instance Property "ScreenCanvasSizeOptions" GridLayoutCanvasSizeOptionsProperty where
  type PropertyType "ScreenCanvasSizeOptions" GridLayoutCanvasSizeOptionsProperty = GridLayoutScreenCanvasSizeOptionsProperty
  set newValue GridLayoutCanvasSizeOptionsProperty {..}
    = GridLayoutCanvasSizeOptionsProperty
        {screenCanvasSizeOptions = Prelude.pure newValue, ..}