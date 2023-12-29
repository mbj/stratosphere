module Stratosphere.QuickSight.Analysis.NumberDisplayFormatConfigurationProperty (
        module Exports, NumberDisplayFormatConfigurationProperty(..),
        mkNumberDisplayFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DecimalPlacesConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NegativeValueConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NullValueFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumericSeparatorConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumberDisplayFormatConfigurationProperty
  = NumberDisplayFormatConfigurationProperty {decimalPlacesConfiguration :: (Prelude.Maybe DecimalPlacesConfigurationProperty),
                                              negativeValueConfiguration :: (Prelude.Maybe NegativeValueConfigurationProperty),
                                              nullValueFormatConfiguration :: (Prelude.Maybe NullValueFormatConfigurationProperty),
                                              numberScale :: (Prelude.Maybe (Value Prelude.Text)),
                                              prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                              separatorConfiguration :: (Prelude.Maybe NumericSeparatorConfigurationProperty),
                                              suffix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumberDisplayFormatConfigurationProperty ::
  NumberDisplayFormatConfigurationProperty
mkNumberDisplayFormatConfigurationProperty
  = NumberDisplayFormatConfigurationProperty
      {decimalPlacesConfiguration = Prelude.Nothing,
       negativeValueConfiguration = Prelude.Nothing,
       nullValueFormatConfiguration = Prelude.Nothing,
       numberScale = Prelude.Nothing, prefix = Prelude.Nothing,
       separatorConfiguration = Prelude.Nothing, suffix = Prelude.Nothing}
instance ToResourceProperties NumberDisplayFormatConfigurationProperty where
  toResourceProperties NumberDisplayFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.NumberDisplayFormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DecimalPlacesConfiguration"
                              Prelude.<$> decimalPlacesConfiguration,
                            (JSON..=) "NegativeValueConfiguration"
                              Prelude.<$> negativeValueConfiguration,
                            (JSON..=) "NullValueFormatConfiguration"
                              Prelude.<$> nullValueFormatConfiguration,
                            (JSON..=) "NumberScale" Prelude.<$> numberScale,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "SeparatorConfiguration"
                              Prelude.<$> separatorConfiguration,
                            (JSON..=) "Suffix" Prelude.<$> suffix])}
instance JSON.ToJSON NumberDisplayFormatConfigurationProperty where
  toJSON NumberDisplayFormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DecimalPlacesConfiguration"
                 Prelude.<$> decimalPlacesConfiguration,
               (JSON..=) "NegativeValueConfiguration"
                 Prelude.<$> negativeValueConfiguration,
               (JSON..=) "NullValueFormatConfiguration"
                 Prelude.<$> nullValueFormatConfiguration,
               (JSON..=) "NumberScale" Prelude.<$> numberScale,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "SeparatorConfiguration"
                 Prelude.<$> separatorConfiguration,
               (JSON..=) "Suffix" Prelude.<$> suffix]))
instance Property "DecimalPlacesConfiguration" NumberDisplayFormatConfigurationProperty where
  type PropertyType "DecimalPlacesConfiguration" NumberDisplayFormatConfigurationProperty = DecimalPlacesConfigurationProperty
  set newValue NumberDisplayFormatConfigurationProperty {..}
    = NumberDisplayFormatConfigurationProperty
        {decimalPlacesConfiguration = Prelude.pure newValue, ..}
instance Property "NegativeValueConfiguration" NumberDisplayFormatConfigurationProperty where
  type PropertyType "NegativeValueConfiguration" NumberDisplayFormatConfigurationProperty = NegativeValueConfigurationProperty
  set newValue NumberDisplayFormatConfigurationProperty {..}
    = NumberDisplayFormatConfigurationProperty
        {negativeValueConfiguration = Prelude.pure newValue, ..}
instance Property "NullValueFormatConfiguration" NumberDisplayFormatConfigurationProperty where
  type PropertyType "NullValueFormatConfiguration" NumberDisplayFormatConfigurationProperty = NullValueFormatConfigurationProperty
  set newValue NumberDisplayFormatConfigurationProperty {..}
    = NumberDisplayFormatConfigurationProperty
        {nullValueFormatConfiguration = Prelude.pure newValue, ..}
instance Property "NumberScale" NumberDisplayFormatConfigurationProperty where
  type PropertyType "NumberScale" NumberDisplayFormatConfigurationProperty = Value Prelude.Text
  set newValue NumberDisplayFormatConfigurationProperty {..}
    = NumberDisplayFormatConfigurationProperty
        {numberScale = Prelude.pure newValue, ..}
instance Property "Prefix" NumberDisplayFormatConfigurationProperty where
  type PropertyType "Prefix" NumberDisplayFormatConfigurationProperty = Value Prelude.Text
  set newValue NumberDisplayFormatConfigurationProperty {..}
    = NumberDisplayFormatConfigurationProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "SeparatorConfiguration" NumberDisplayFormatConfigurationProperty where
  type PropertyType "SeparatorConfiguration" NumberDisplayFormatConfigurationProperty = NumericSeparatorConfigurationProperty
  set newValue NumberDisplayFormatConfigurationProperty {..}
    = NumberDisplayFormatConfigurationProperty
        {separatorConfiguration = Prelude.pure newValue, ..}
instance Property "Suffix" NumberDisplayFormatConfigurationProperty where
  type PropertyType "Suffix" NumberDisplayFormatConfigurationProperty = Value Prelude.Text
  set newValue NumberDisplayFormatConfigurationProperty {..}
    = NumberDisplayFormatConfigurationProperty
        {suffix = Prelude.pure newValue, ..}