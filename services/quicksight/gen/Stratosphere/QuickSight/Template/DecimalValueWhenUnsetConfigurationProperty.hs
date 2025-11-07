module Stratosphere.QuickSight.Template.DecimalValueWhenUnsetConfigurationProperty (
        DecimalValueWhenUnsetConfigurationProperty(..),
        mkDecimalValueWhenUnsetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DecimalValueWhenUnsetConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-decimalvaluewhenunsetconfiguration.html>
    DecimalValueWhenUnsetConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-decimalvaluewhenunsetconfiguration.html#cfn-quicksight-template-decimalvaluewhenunsetconfiguration-customvalue>
                                                customValue :: (Prelude.Maybe (Value Prelude.Double)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-decimalvaluewhenunsetconfiguration.html#cfn-quicksight-template-decimalvaluewhenunsetconfiguration-valuewhenunsetoption>
                                                valueWhenUnsetOption :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDecimalValueWhenUnsetConfigurationProperty ::
  DecimalValueWhenUnsetConfigurationProperty
mkDecimalValueWhenUnsetConfigurationProperty
  = DecimalValueWhenUnsetConfigurationProperty
      {haddock_workaround_ = (), customValue = Prelude.Nothing,
       valueWhenUnsetOption = Prelude.Nothing}
instance ToResourceProperties DecimalValueWhenUnsetConfigurationProperty where
  toResourceProperties
    DecimalValueWhenUnsetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DecimalValueWhenUnsetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomValue" Prelude.<$> customValue,
                            (JSON..=) "ValueWhenUnsetOption"
                              Prelude.<$> valueWhenUnsetOption])}
instance JSON.ToJSON DecimalValueWhenUnsetConfigurationProperty where
  toJSON DecimalValueWhenUnsetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomValue" Prelude.<$> customValue,
               (JSON..=) "ValueWhenUnsetOption"
                 Prelude.<$> valueWhenUnsetOption]))
instance Property "CustomValue" DecimalValueWhenUnsetConfigurationProperty where
  type PropertyType "CustomValue" DecimalValueWhenUnsetConfigurationProperty = Value Prelude.Double
  set newValue DecimalValueWhenUnsetConfigurationProperty {..}
    = DecimalValueWhenUnsetConfigurationProperty
        {customValue = Prelude.pure newValue, ..}
instance Property "ValueWhenUnsetOption" DecimalValueWhenUnsetConfigurationProperty where
  type PropertyType "ValueWhenUnsetOption" DecimalValueWhenUnsetConfigurationProperty = Value Prelude.Text
  set newValue DecimalValueWhenUnsetConfigurationProperty {..}
    = DecimalValueWhenUnsetConfigurationProperty
        {valueWhenUnsetOption = Prelude.pure newValue, ..}