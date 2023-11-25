module Stratosphere.QuickSight.Analysis.ComparisonFormatConfigurationProperty (
        module Exports, ComparisonFormatConfigurationProperty(..),
        mkComparisonFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumberDisplayFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PercentageDisplayFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ComparisonFormatConfigurationProperty
  = ComparisonFormatConfigurationProperty {numberDisplayFormatConfiguration :: (Prelude.Maybe NumberDisplayFormatConfigurationProperty),
                                           percentageDisplayFormatConfiguration :: (Prelude.Maybe PercentageDisplayFormatConfigurationProperty)}
mkComparisonFormatConfigurationProperty ::
  ComparisonFormatConfigurationProperty
mkComparisonFormatConfigurationProperty
  = ComparisonFormatConfigurationProperty
      {numberDisplayFormatConfiguration = Prelude.Nothing,
       percentageDisplayFormatConfiguration = Prelude.Nothing}
instance ToResourceProperties ComparisonFormatConfigurationProperty where
  toResourceProperties ComparisonFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ComparisonFormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NumberDisplayFormatConfiguration"
                              Prelude.<$> numberDisplayFormatConfiguration,
                            (JSON..=) "PercentageDisplayFormatConfiguration"
                              Prelude.<$> percentageDisplayFormatConfiguration])}
instance JSON.ToJSON ComparisonFormatConfigurationProperty where
  toJSON ComparisonFormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NumberDisplayFormatConfiguration"
                 Prelude.<$> numberDisplayFormatConfiguration,
               (JSON..=) "PercentageDisplayFormatConfiguration"
                 Prelude.<$> percentageDisplayFormatConfiguration]))
instance Property "NumberDisplayFormatConfiguration" ComparisonFormatConfigurationProperty where
  type PropertyType "NumberDisplayFormatConfiguration" ComparisonFormatConfigurationProperty = NumberDisplayFormatConfigurationProperty
  set newValue ComparisonFormatConfigurationProperty {..}
    = ComparisonFormatConfigurationProperty
        {numberDisplayFormatConfiguration = Prelude.pure newValue, ..}
instance Property "PercentageDisplayFormatConfiguration" ComparisonFormatConfigurationProperty where
  type PropertyType "PercentageDisplayFormatConfiguration" ComparisonFormatConfigurationProperty = PercentageDisplayFormatConfigurationProperty
  set newValue ComparisonFormatConfigurationProperty {..}
    = ComparisonFormatConfigurationProperty
        {percentageDisplayFormatConfiguration = Prelude.pure newValue, ..}