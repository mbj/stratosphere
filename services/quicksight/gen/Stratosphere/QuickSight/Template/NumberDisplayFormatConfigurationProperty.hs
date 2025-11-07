module Stratosphere.QuickSight.Template.NumberDisplayFormatConfigurationProperty (
        module Exports, NumberDisplayFormatConfigurationProperty(..),
        mkNumberDisplayFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DecimalPlacesConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NegativeValueConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NullValueFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NumericSeparatorConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumberDisplayFormatConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numberdisplayformatconfiguration.html>
    NumberDisplayFormatConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numberdisplayformatconfiguration.html#cfn-quicksight-template-numberdisplayformatconfiguration-decimalplacesconfiguration>
                                              decimalPlacesConfiguration :: (Prelude.Maybe DecimalPlacesConfigurationProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numberdisplayformatconfiguration.html#cfn-quicksight-template-numberdisplayformatconfiguration-negativevalueconfiguration>
                                              negativeValueConfiguration :: (Prelude.Maybe NegativeValueConfigurationProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numberdisplayformatconfiguration.html#cfn-quicksight-template-numberdisplayformatconfiguration-nullvalueformatconfiguration>
                                              nullValueFormatConfiguration :: (Prelude.Maybe NullValueFormatConfigurationProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numberdisplayformatconfiguration.html#cfn-quicksight-template-numberdisplayformatconfiguration-numberscale>
                                              numberScale :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numberdisplayformatconfiguration.html#cfn-quicksight-template-numberdisplayformatconfiguration-prefix>
                                              prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numberdisplayformatconfiguration.html#cfn-quicksight-template-numberdisplayformatconfiguration-separatorconfiguration>
                                              separatorConfiguration :: (Prelude.Maybe NumericSeparatorConfigurationProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numberdisplayformatconfiguration.html#cfn-quicksight-template-numberdisplayformatconfiguration-suffix>
                                              suffix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumberDisplayFormatConfigurationProperty ::
  NumberDisplayFormatConfigurationProperty
mkNumberDisplayFormatConfigurationProperty
  = NumberDisplayFormatConfigurationProperty
      {haddock_workaround_ = (),
       decimalPlacesConfiguration = Prelude.Nothing,
       negativeValueConfiguration = Prelude.Nothing,
       nullValueFormatConfiguration = Prelude.Nothing,
       numberScale = Prelude.Nothing, prefix = Prelude.Nothing,
       separatorConfiguration = Prelude.Nothing, suffix = Prelude.Nothing}
instance ToResourceProperties NumberDisplayFormatConfigurationProperty where
  toResourceProperties NumberDisplayFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.NumberDisplayFormatConfiguration",
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