module Stratosphere.QuickSight.Analysis.GridLayoutConfigurationProperty (
        module Exports, GridLayoutConfigurationProperty(..),
        mkGridLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GridLayoutCanvasSizeOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GridLayoutElementProperty as Exports
import Stratosphere.ResourceProperties
data GridLayoutConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gridlayoutconfiguration.html>
    GridLayoutConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gridlayoutconfiguration.html#cfn-quicksight-analysis-gridlayoutconfiguration-canvassizeoptions>
                                     canvasSizeOptions :: (Prelude.Maybe GridLayoutCanvasSizeOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gridlayoutconfiguration.html#cfn-quicksight-analysis-gridlayoutconfiguration-elements>
                                     elements :: [GridLayoutElementProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGridLayoutConfigurationProperty ::
  [GridLayoutElementProperty] -> GridLayoutConfigurationProperty
mkGridLayoutConfigurationProperty elements
  = GridLayoutConfigurationProperty
      {haddock_workaround_ = (), elements = elements,
       canvasSizeOptions = Prelude.Nothing}
instance ToResourceProperties GridLayoutConfigurationProperty where
  toResourceProperties GridLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GridLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Elements" JSON..= elements]
                           (Prelude.catMaybes
                              [(JSON..=) "CanvasSizeOptions" Prelude.<$> canvasSizeOptions]))}
instance JSON.ToJSON GridLayoutConfigurationProperty where
  toJSON GridLayoutConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Elements" JSON..= elements]
              (Prelude.catMaybes
                 [(JSON..=) "CanvasSizeOptions" Prelude.<$> canvasSizeOptions])))
instance Property "CanvasSizeOptions" GridLayoutConfigurationProperty where
  type PropertyType "CanvasSizeOptions" GridLayoutConfigurationProperty = GridLayoutCanvasSizeOptionsProperty
  set newValue GridLayoutConfigurationProperty {..}
    = GridLayoutConfigurationProperty
        {canvasSizeOptions = Prelude.pure newValue, ..}
instance Property "Elements" GridLayoutConfigurationProperty where
  type PropertyType "Elements" GridLayoutConfigurationProperty = [GridLayoutElementProperty]
  set newValue GridLayoutConfigurationProperty {..}
    = GridLayoutConfigurationProperty {elements = newValue, ..}