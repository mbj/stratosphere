module Stratosphere.QuickSight.Dashboard.NumericFormatConfigurationProperty (
        module Exports, NumericFormatConfigurationProperty(..),
        mkNumericFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CurrencyDisplayFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.NumberDisplayFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PercentageDisplayFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data NumericFormatConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericformatconfiguration.html>
    NumericFormatConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericformatconfiguration.html#cfn-quicksight-dashboard-numericformatconfiguration-currencydisplayformatconfiguration>
                                        currencyDisplayFormatConfiguration :: (Prelude.Maybe CurrencyDisplayFormatConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericformatconfiguration.html#cfn-quicksight-dashboard-numericformatconfiguration-numberdisplayformatconfiguration>
                                        numberDisplayFormatConfiguration :: (Prelude.Maybe NumberDisplayFormatConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericformatconfiguration.html#cfn-quicksight-dashboard-numericformatconfiguration-percentagedisplayformatconfiguration>
                                        percentageDisplayFormatConfiguration :: (Prelude.Maybe PercentageDisplayFormatConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumericFormatConfigurationProperty ::
  NumericFormatConfigurationProperty
mkNumericFormatConfigurationProperty
  = NumericFormatConfigurationProperty
      {haddock_workaround_ = (),
       currencyDisplayFormatConfiguration = Prelude.Nothing,
       numberDisplayFormatConfiguration = Prelude.Nothing,
       percentageDisplayFormatConfiguration = Prelude.Nothing}
instance ToResourceProperties NumericFormatConfigurationProperty where
  toResourceProperties NumericFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.NumericFormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CurrencyDisplayFormatConfiguration"
                              Prelude.<$> currencyDisplayFormatConfiguration,
                            (JSON..=) "NumberDisplayFormatConfiguration"
                              Prelude.<$> numberDisplayFormatConfiguration,
                            (JSON..=) "PercentageDisplayFormatConfiguration"
                              Prelude.<$> percentageDisplayFormatConfiguration])}
instance JSON.ToJSON NumericFormatConfigurationProperty where
  toJSON NumericFormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CurrencyDisplayFormatConfiguration"
                 Prelude.<$> currencyDisplayFormatConfiguration,
               (JSON..=) "NumberDisplayFormatConfiguration"
                 Prelude.<$> numberDisplayFormatConfiguration,
               (JSON..=) "PercentageDisplayFormatConfiguration"
                 Prelude.<$> percentageDisplayFormatConfiguration]))
instance Property "CurrencyDisplayFormatConfiguration" NumericFormatConfigurationProperty where
  type PropertyType "CurrencyDisplayFormatConfiguration" NumericFormatConfigurationProperty = CurrencyDisplayFormatConfigurationProperty
  set newValue NumericFormatConfigurationProperty {..}
    = NumericFormatConfigurationProperty
        {currencyDisplayFormatConfiguration = Prelude.pure newValue, ..}
instance Property "NumberDisplayFormatConfiguration" NumericFormatConfigurationProperty where
  type PropertyType "NumberDisplayFormatConfiguration" NumericFormatConfigurationProperty = NumberDisplayFormatConfigurationProperty
  set newValue NumericFormatConfigurationProperty {..}
    = NumericFormatConfigurationProperty
        {numberDisplayFormatConfiguration = Prelude.pure newValue, ..}
instance Property "PercentageDisplayFormatConfiguration" NumericFormatConfigurationProperty where
  type PropertyType "PercentageDisplayFormatConfiguration" NumericFormatConfigurationProperty = PercentageDisplayFormatConfigurationProperty
  set newValue NumericFormatConfigurationProperty {..}
    = NumericFormatConfigurationProperty
        {percentageDisplayFormatConfiguration = Prelude.pure newValue, ..}