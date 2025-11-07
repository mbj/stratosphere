module Stratosphere.QuickSight.Dashboard.GeospatialCategoricalColorProperty (
        module Exports, GeospatialCategoricalColorProperty(..),
        mkGeospatialCategoricalColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialCategoricalDataColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialNullDataSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialCategoricalColorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcategoricalcolor.html>
    GeospatialCategoricalColorProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcategoricalcolor.html#cfn-quicksight-dashboard-geospatialcategoricalcolor-categorydatacolors>
                                        categoryDataColors :: [GeospatialCategoricalDataColorProperty],
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcategoricalcolor.html#cfn-quicksight-dashboard-geospatialcategoricalcolor-defaultopacity>
                                        defaultOpacity :: (Prelude.Maybe (Value Prelude.Double)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcategoricalcolor.html#cfn-quicksight-dashboard-geospatialcategoricalcolor-nulldatasettings>
                                        nullDataSettings :: (Prelude.Maybe GeospatialNullDataSettingsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcategoricalcolor.html#cfn-quicksight-dashboard-geospatialcategoricalcolor-nulldatavisibility>
                                        nullDataVisibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialCategoricalColorProperty ::
  [GeospatialCategoricalDataColorProperty]
  -> GeospatialCategoricalColorProperty
mkGeospatialCategoricalColorProperty categoryDataColors
  = GeospatialCategoricalColorProperty
      {haddock_workaround_ = (), categoryDataColors = categoryDataColors,
       defaultOpacity = Prelude.Nothing,
       nullDataSettings = Prelude.Nothing,
       nullDataVisibility = Prelude.Nothing}
instance ToResourceProperties GeospatialCategoricalColorProperty where
  toResourceProperties GeospatialCategoricalColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialCategoricalColor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CategoryDataColors" JSON..= categoryDataColors]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultOpacity" Prelude.<$> defaultOpacity,
                               (JSON..=) "NullDataSettings" Prelude.<$> nullDataSettings,
                               (JSON..=) "NullDataVisibility" Prelude.<$> nullDataVisibility]))}
instance JSON.ToJSON GeospatialCategoricalColorProperty where
  toJSON GeospatialCategoricalColorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CategoryDataColors" JSON..= categoryDataColors]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultOpacity" Prelude.<$> defaultOpacity,
                  (JSON..=) "NullDataSettings" Prelude.<$> nullDataSettings,
                  (JSON..=) "NullDataVisibility" Prelude.<$> nullDataVisibility])))
instance Property "CategoryDataColors" GeospatialCategoricalColorProperty where
  type PropertyType "CategoryDataColors" GeospatialCategoricalColorProperty = [GeospatialCategoricalDataColorProperty]
  set newValue GeospatialCategoricalColorProperty {..}
    = GeospatialCategoricalColorProperty
        {categoryDataColors = newValue, ..}
instance Property "DefaultOpacity" GeospatialCategoricalColorProperty where
  type PropertyType "DefaultOpacity" GeospatialCategoricalColorProperty = Value Prelude.Double
  set newValue GeospatialCategoricalColorProperty {..}
    = GeospatialCategoricalColorProperty
        {defaultOpacity = Prelude.pure newValue, ..}
instance Property "NullDataSettings" GeospatialCategoricalColorProperty where
  type PropertyType "NullDataSettings" GeospatialCategoricalColorProperty = GeospatialNullDataSettingsProperty
  set newValue GeospatialCategoricalColorProperty {..}
    = GeospatialCategoricalColorProperty
        {nullDataSettings = Prelude.pure newValue, ..}
instance Property "NullDataVisibility" GeospatialCategoricalColorProperty where
  type PropertyType "NullDataVisibility" GeospatialCategoricalColorProperty = Value Prelude.Text
  set newValue GeospatialCategoricalColorProperty {..}
    = GeospatialCategoricalColorProperty
        {nullDataVisibility = Prelude.pure newValue, ..}