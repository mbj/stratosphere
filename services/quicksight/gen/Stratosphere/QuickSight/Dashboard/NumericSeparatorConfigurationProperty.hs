module Stratosphere.QuickSight.Dashboard.NumericSeparatorConfigurationProperty (
        module Exports, NumericSeparatorConfigurationProperty(..),
        mkNumericSeparatorConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ThousandSeparatorOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumericSeparatorConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericseparatorconfiguration.html>
    NumericSeparatorConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericseparatorconfiguration.html#cfn-quicksight-dashboard-numericseparatorconfiguration-decimalseparator>
                                           decimalSeparator :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericseparatorconfiguration.html#cfn-quicksight-dashboard-numericseparatorconfiguration-thousandsseparator>
                                           thousandsSeparator :: (Prelude.Maybe ThousandSeparatorOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumericSeparatorConfigurationProperty ::
  NumericSeparatorConfigurationProperty
mkNumericSeparatorConfigurationProperty
  = NumericSeparatorConfigurationProperty
      {haddock_workaround_ = (), decimalSeparator = Prelude.Nothing,
       thousandsSeparator = Prelude.Nothing}
instance ToResourceProperties NumericSeparatorConfigurationProperty where
  toResourceProperties NumericSeparatorConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.NumericSeparatorConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DecimalSeparator" Prelude.<$> decimalSeparator,
                            (JSON..=) "ThousandsSeparator" Prelude.<$> thousandsSeparator])}
instance JSON.ToJSON NumericSeparatorConfigurationProperty where
  toJSON NumericSeparatorConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DecimalSeparator" Prelude.<$> decimalSeparator,
               (JSON..=) "ThousandsSeparator" Prelude.<$> thousandsSeparator]))
instance Property "DecimalSeparator" NumericSeparatorConfigurationProperty where
  type PropertyType "DecimalSeparator" NumericSeparatorConfigurationProperty = Value Prelude.Text
  set newValue NumericSeparatorConfigurationProperty {..}
    = NumericSeparatorConfigurationProperty
        {decimalSeparator = Prelude.pure newValue, ..}
instance Property "ThousandsSeparator" NumericSeparatorConfigurationProperty where
  type PropertyType "ThousandsSeparator" NumericSeparatorConfigurationProperty = ThousandSeparatorOptionsProperty
  set newValue NumericSeparatorConfigurationProperty {..}
    = NumericSeparatorConfigurationProperty
        {thousandsSeparator = Prelude.pure newValue, ..}