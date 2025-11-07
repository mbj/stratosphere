module Stratosphere.QuickSight.Dashboard.GeospatialGradientColorProperty (
        module Exports, GeospatialGradientColorProperty(..),
        mkGeospatialGradientColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialGradientStepColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialNullDataSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialGradientColorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialgradientcolor.html>
    GeospatialGradientColorProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialgradientcolor.html#cfn-quicksight-dashboard-geospatialgradientcolor-defaultopacity>
                                     defaultOpacity :: (Prelude.Maybe (Value Prelude.Double)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialgradientcolor.html#cfn-quicksight-dashboard-geospatialgradientcolor-nulldatasettings>
                                     nullDataSettings :: (Prelude.Maybe GeospatialNullDataSettingsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialgradientcolor.html#cfn-quicksight-dashboard-geospatialgradientcolor-nulldatavisibility>
                                     nullDataVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialgradientcolor.html#cfn-quicksight-dashboard-geospatialgradientcolor-stepcolors>
                                     stepColors :: [GeospatialGradientStepColorProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialGradientColorProperty ::
  [GeospatialGradientStepColorProperty]
  -> GeospatialGradientColorProperty
mkGeospatialGradientColorProperty stepColors
  = GeospatialGradientColorProperty
      {haddock_workaround_ = (), stepColors = stepColors,
       defaultOpacity = Prelude.Nothing,
       nullDataSettings = Prelude.Nothing,
       nullDataVisibility = Prelude.Nothing}
instance ToResourceProperties GeospatialGradientColorProperty where
  toResourceProperties GeospatialGradientColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialGradientColor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StepColors" JSON..= stepColors]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultOpacity" Prelude.<$> defaultOpacity,
                               (JSON..=) "NullDataSettings" Prelude.<$> nullDataSettings,
                               (JSON..=) "NullDataVisibility" Prelude.<$> nullDataVisibility]))}
instance JSON.ToJSON GeospatialGradientColorProperty where
  toJSON GeospatialGradientColorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StepColors" JSON..= stepColors]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultOpacity" Prelude.<$> defaultOpacity,
                  (JSON..=) "NullDataSettings" Prelude.<$> nullDataSettings,
                  (JSON..=) "NullDataVisibility" Prelude.<$> nullDataVisibility])))
instance Property "DefaultOpacity" GeospatialGradientColorProperty where
  type PropertyType "DefaultOpacity" GeospatialGradientColorProperty = Value Prelude.Double
  set newValue GeospatialGradientColorProperty {..}
    = GeospatialGradientColorProperty
        {defaultOpacity = Prelude.pure newValue, ..}
instance Property "NullDataSettings" GeospatialGradientColorProperty where
  type PropertyType "NullDataSettings" GeospatialGradientColorProperty = GeospatialNullDataSettingsProperty
  set newValue GeospatialGradientColorProperty {..}
    = GeospatialGradientColorProperty
        {nullDataSettings = Prelude.pure newValue, ..}
instance Property "NullDataVisibility" GeospatialGradientColorProperty where
  type PropertyType "NullDataVisibility" GeospatialGradientColorProperty = Value Prelude.Text
  set newValue GeospatialGradientColorProperty {..}
    = GeospatialGradientColorProperty
        {nullDataVisibility = Prelude.pure newValue, ..}
instance Property "StepColors" GeospatialGradientColorProperty where
  type PropertyType "StepColors" GeospatialGradientColorProperty = [GeospatialGradientStepColorProperty]
  set newValue GeospatialGradientColorProperty {..}
    = GeospatialGradientColorProperty {stepColors = newValue, ..}