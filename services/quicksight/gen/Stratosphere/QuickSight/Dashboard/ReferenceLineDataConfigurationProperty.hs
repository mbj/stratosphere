module Stratosphere.QuickSight.Dashboard.ReferenceLineDataConfigurationProperty (
        module Exports, ReferenceLineDataConfigurationProperty(..),
        mkReferenceLineDataConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ReferenceLineDynamicDataConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ReferenceLineStaticDataConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceLineDataConfigurationProperty
  = ReferenceLineDataConfigurationProperty {axisBinding :: (Prelude.Maybe (Value Prelude.Text)),
                                            dynamicConfiguration :: (Prelude.Maybe ReferenceLineDynamicDataConfigurationProperty),
                                            seriesType :: (Prelude.Maybe (Value Prelude.Text)),
                                            staticConfiguration :: (Prelude.Maybe ReferenceLineStaticDataConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceLineDataConfigurationProperty ::
  ReferenceLineDataConfigurationProperty
mkReferenceLineDataConfigurationProperty
  = ReferenceLineDataConfigurationProperty
      {axisBinding = Prelude.Nothing,
       dynamicConfiguration = Prelude.Nothing,
       seriesType = Prelude.Nothing,
       staticConfiguration = Prelude.Nothing}
instance ToResourceProperties ReferenceLineDataConfigurationProperty where
  toResourceProperties ReferenceLineDataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ReferenceLineDataConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AxisBinding" Prelude.<$> axisBinding,
                            (JSON..=) "DynamicConfiguration" Prelude.<$> dynamicConfiguration,
                            (JSON..=) "SeriesType" Prelude.<$> seriesType,
                            (JSON..=) "StaticConfiguration" Prelude.<$> staticConfiguration])}
instance JSON.ToJSON ReferenceLineDataConfigurationProperty where
  toJSON ReferenceLineDataConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AxisBinding" Prelude.<$> axisBinding,
               (JSON..=) "DynamicConfiguration" Prelude.<$> dynamicConfiguration,
               (JSON..=) "SeriesType" Prelude.<$> seriesType,
               (JSON..=) "StaticConfiguration" Prelude.<$> staticConfiguration]))
instance Property "AxisBinding" ReferenceLineDataConfigurationProperty where
  type PropertyType "AxisBinding" ReferenceLineDataConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineDataConfigurationProperty {..}
    = ReferenceLineDataConfigurationProperty
        {axisBinding = Prelude.pure newValue, ..}
instance Property "DynamicConfiguration" ReferenceLineDataConfigurationProperty where
  type PropertyType "DynamicConfiguration" ReferenceLineDataConfigurationProperty = ReferenceLineDynamicDataConfigurationProperty
  set newValue ReferenceLineDataConfigurationProperty {..}
    = ReferenceLineDataConfigurationProperty
        {dynamicConfiguration = Prelude.pure newValue, ..}
instance Property "SeriesType" ReferenceLineDataConfigurationProperty where
  type PropertyType "SeriesType" ReferenceLineDataConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineDataConfigurationProperty {..}
    = ReferenceLineDataConfigurationProperty
        {seriesType = Prelude.pure newValue, ..}
instance Property "StaticConfiguration" ReferenceLineDataConfigurationProperty where
  type PropertyType "StaticConfiguration" ReferenceLineDataConfigurationProperty = ReferenceLineStaticDataConfigurationProperty
  set newValue ReferenceLineDataConfigurationProperty {..}
    = ReferenceLineDataConfigurationProperty
        {staticConfiguration = Prelude.pure newValue, ..}