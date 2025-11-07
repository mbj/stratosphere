module Stratosphere.QuickSight.Template.CurrencyDisplayFormatConfigurationProperty (
        module Exports, CurrencyDisplayFormatConfigurationProperty(..),
        mkCurrencyDisplayFormatConfigurationProperty
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
data CurrencyDisplayFormatConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html>
    CurrencyDisplayFormatConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-decimalplacesconfiguration>
                                                decimalPlacesConfiguration :: (Prelude.Maybe DecimalPlacesConfigurationProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-negativevalueconfiguration>
                                                negativeValueConfiguration :: (Prelude.Maybe NegativeValueConfigurationProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-nullvalueformatconfiguration>
                                                nullValueFormatConfiguration :: (Prelude.Maybe NullValueFormatConfigurationProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-numberscale>
                                                numberScale :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-prefix>
                                                prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-separatorconfiguration>
                                                separatorConfiguration :: (Prelude.Maybe NumericSeparatorConfigurationProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-suffix>
                                                suffix :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-symbol>
                                                symbol :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCurrencyDisplayFormatConfigurationProperty ::
  CurrencyDisplayFormatConfigurationProperty
mkCurrencyDisplayFormatConfigurationProperty
  = CurrencyDisplayFormatConfigurationProperty
      {haddock_workaround_ = (),
       decimalPlacesConfiguration = Prelude.Nothing,
       negativeValueConfiguration = Prelude.Nothing,
       nullValueFormatConfiguration = Prelude.Nothing,
       numberScale = Prelude.Nothing, prefix = Prelude.Nothing,
       separatorConfiguration = Prelude.Nothing, suffix = Prelude.Nothing,
       symbol = Prelude.Nothing}
instance ToResourceProperties CurrencyDisplayFormatConfigurationProperty where
  toResourceProperties
    CurrencyDisplayFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CurrencyDisplayFormatConfiguration",
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
                            (JSON..=) "Suffix" Prelude.<$> suffix,
                            (JSON..=) "Symbol" Prelude.<$> symbol])}
instance JSON.ToJSON CurrencyDisplayFormatConfigurationProperty where
  toJSON CurrencyDisplayFormatConfigurationProperty {..}
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
               (JSON..=) "Suffix" Prelude.<$> suffix,
               (JSON..=) "Symbol" Prelude.<$> symbol]))
instance Property "DecimalPlacesConfiguration" CurrencyDisplayFormatConfigurationProperty where
  type PropertyType "DecimalPlacesConfiguration" CurrencyDisplayFormatConfigurationProperty = DecimalPlacesConfigurationProperty
  set newValue CurrencyDisplayFormatConfigurationProperty {..}
    = CurrencyDisplayFormatConfigurationProperty
        {decimalPlacesConfiguration = Prelude.pure newValue, ..}
instance Property "NegativeValueConfiguration" CurrencyDisplayFormatConfigurationProperty where
  type PropertyType "NegativeValueConfiguration" CurrencyDisplayFormatConfigurationProperty = NegativeValueConfigurationProperty
  set newValue CurrencyDisplayFormatConfigurationProperty {..}
    = CurrencyDisplayFormatConfigurationProperty
        {negativeValueConfiguration = Prelude.pure newValue, ..}
instance Property "NullValueFormatConfiguration" CurrencyDisplayFormatConfigurationProperty where
  type PropertyType "NullValueFormatConfiguration" CurrencyDisplayFormatConfigurationProperty = NullValueFormatConfigurationProperty
  set newValue CurrencyDisplayFormatConfigurationProperty {..}
    = CurrencyDisplayFormatConfigurationProperty
        {nullValueFormatConfiguration = Prelude.pure newValue, ..}
instance Property "NumberScale" CurrencyDisplayFormatConfigurationProperty where
  type PropertyType "NumberScale" CurrencyDisplayFormatConfigurationProperty = Value Prelude.Text
  set newValue CurrencyDisplayFormatConfigurationProperty {..}
    = CurrencyDisplayFormatConfigurationProperty
        {numberScale = Prelude.pure newValue, ..}
instance Property "Prefix" CurrencyDisplayFormatConfigurationProperty where
  type PropertyType "Prefix" CurrencyDisplayFormatConfigurationProperty = Value Prelude.Text
  set newValue CurrencyDisplayFormatConfigurationProperty {..}
    = CurrencyDisplayFormatConfigurationProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "SeparatorConfiguration" CurrencyDisplayFormatConfigurationProperty where
  type PropertyType "SeparatorConfiguration" CurrencyDisplayFormatConfigurationProperty = NumericSeparatorConfigurationProperty
  set newValue CurrencyDisplayFormatConfigurationProperty {..}
    = CurrencyDisplayFormatConfigurationProperty
        {separatorConfiguration = Prelude.pure newValue, ..}
instance Property "Suffix" CurrencyDisplayFormatConfigurationProperty where
  type PropertyType "Suffix" CurrencyDisplayFormatConfigurationProperty = Value Prelude.Text
  set newValue CurrencyDisplayFormatConfigurationProperty {..}
    = CurrencyDisplayFormatConfigurationProperty
        {suffix = Prelude.pure newValue, ..}
instance Property "Symbol" CurrencyDisplayFormatConfigurationProperty where
  type PropertyType "Symbol" CurrencyDisplayFormatConfigurationProperty = Value Prelude.Text
  set newValue CurrencyDisplayFormatConfigurationProperty {..}
    = CurrencyDisplayFormatConfigurationProperty
        {symbol = Prelude.pure newValue, ..}