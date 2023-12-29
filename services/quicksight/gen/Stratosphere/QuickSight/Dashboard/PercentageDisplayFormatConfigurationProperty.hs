module Stratosphere.QuickSight.Dashboard.PercentageDisplayFormatConfigurationProperty (
        module Exports, PercentageDisplayFormatConfigurationProperty(..),
        mkPercentageDisplayFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DecimalPlacesConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.NegativeValueConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.NullValueFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.NumericSeparatorConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PercentageDisplayFormatConfigurationProperty
  = PercentageDisplayFormatConfigurationProperty {decimalPlacesConfiguration :: (Prelude.Maybe DecimalPlacesConfigurationProperty),
                                                  negativeValueConfiguration :: (Prelude.Maybe NegativeValueConfigurationProperty),
                                                  nullValueFormatConfiguration :: (Prelude.Maybe NullValueFormatConfigurationProperty),
                                                  prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                                  separatorConfiguration :: (Prelude.Maybe NumericSeparatorConfigurationProperty),
                                                  suffix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPercentageDisplayFormatConfigurationProperty ::
  PercentageDisplayFormatConfigurationProperty
mkPercentageDisplayFormatConfigurationProperty
  = PercentageDisplayFormatConfigurationProperty
      {decimalPlacesConfiguration = Prelude.Nothing,
       negativeValueConfiguration = Prelude.Nothing,
       nullValueFormatConfiguration = Prelude.Nothing,
       prefix = Prelude.Nothing, separatorConfiguration = Prelude.Nothing,
       suffix = Prelude.Nothing}
instance ToResourceProperties PercentageDisplayFormatConfigurationProperty where
  toResourceProperties
    PercentageDisplayFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PercentageDisplayFormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DecimalPlacesConfiguration"
                              Prelude.<$> decimalPlacesConfiguration,
                            (JSON..=) "NegativeValueConfiguration"
                              Prelude.<$> negativeValueConfiguration,
                            (JSON..=) "NullValueFormatConfiguration"
                              Prelude.<$> nullValueFormatConfiguration,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "SeparatorConfiguration"
                              Prelude.<$> separatorConfiguration,
                            (JSON..=) "Suffix" Prelude.<$> suffix])}
instance JSON.ToJSON PercentageDisplayFormatConfigurationProperty where
  toJSON PercentageDisplayFormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DecimalPlacesConfiguration"
                 Prelude.<$> decimalPlacesConfiguration,
               (JSON..=) "NegativeValueConfiguration"
                 Prelude.<$> negativeValueConfiguration,
               (JSON..=) "NullValueFormatConfiguration"
                 Prelude.<$> nullValueFormatConfiguration,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "SeparatorConfiguration"
                 Prelude.<$> separatorConfiguration,
               (JSON..=) "Suffix" Prelude.<$> suffix]))
instance Property "DecimalPlacesConfiguration" PercentageDisplayFormatConfigurationProperty where
  type PropertyType "DecimalPlacesConfiguration" PercentageDisplayFormatConfigurationProperty = DecimalPlacesConfigurationProperty
  set newValue PercentageDisplayFormatConfigurationProperty {..}
    = PercentageDisplayFormatConfigurationProperty
        {decimalPlacesConfiguration = Prelude.pure newValue, ..}
instance Property "NegativeValueConfiguration" PercentageDisplayFormatConfigurationProperty where
  type PropertyType "NegativeValueConfiguration" PercentageDisplayFormatConfigurationProperty = NegativeValueConfigurationProperty
  set newValue PercentageDisplayFormatConfigurationProperty {..}
    = PercentageDisplayFormatConfigurationProperty
        {negativeValueConfiguration = Prelude.pure newValue, ..}
instance Property "NullValueFormatConfiguration" PercentageDisplayFormatConfigurationProperty where
  type PropertyType "NullValueFormatConfiguration" PercentageDisplayFormatConfigurationProperty = NullValueFormatConfigurationProperty
  set newValue PercentageDisplayFormatConfigurationProperty {..}
    = PercentageDisplayFormatConfigurationProperty
        {nullValueFormatConfiguration = Prelude.pure newValue, ..}
instance Property "Prefix" PercentageDisplayFormatConfigurationProperty where
  type PropertyType "Prefix" PercentageDisplayFormatConfigurationProperty = Value Prelude.Text
  set newValue PercentageDisplayFormatConfigurationProperty {..}
    = PercentageDisplayFormatConfigurationProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "SeparatorConfiguration" PercentageDisplayFormatConfigurationProperty where
  type PropertyType "SeparatorConfiguration" PercentageDisplayFormatConfigurationProperty = NumericSeparatorConfigurationProperty
  set newValue PercentageDisplayFormatConfigurationProperty {..}
    = PercentageDisplayFormatConfigurationProperty
        {separatorConfiguration = Prelude.pure newValue, ..}
instance Property "Suffix" PercentageDisplayFormatConfigurationProperty where
  type PropertyType "Suffix" PercentageDisplayFormatConfigurationProperty = Value Prelude.Text
  set newValue PercentageDisplayFormatConfigurationProperty {..}
    = PercentageDisplayFormatConfigurationProperty
        {suffix = Prelude.pure newValue, ..}