module Stratosphere.QuickSight.Template.IntegerValueWhenUnsetConfigurationProperty (
        IntegerValueWhenUnsetConfigurationProperty(..),
        mkIntegerValueWhenUnsetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegerValueWhenUnsetConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-integervaluewhenunsetconfiguration.html>
    IntegerValueWhenUnsetConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-integervaluewhenunsetconfiguration.html#cfn-quicksight-template-integervaluewhenunsetconfiguration-customvalue>
                                                customValue :: (Prelude.Maybe (Value Prelude.Double)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-integervaluewhenunsetconfiguration.html#cfn-quicksight-template-integervaluewhenunsetconfiguration-valuewhenunsetoption>
                                                valueWhenUnsetOption :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegerValueWhenUnsetConfigurationProperty ::
  IntegerValueWhenUnsetConfigurationProperty
mkIntegerValueWhenUnsetConfigurationProperty
  = IntegerValueWhenUnsetConfigurationProperty
      {haddock_workaround_ = (), customValue = Prelude.Nothing,
       valueWhenUnsetOption = Prelude.Nothing}
instance ToResourceProperties IntegerValueWhenUnsetConfigurationProperty where
  toResourceProperties
    IntegerValueWhenUnsetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.IntegerValueWhenUnsetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomValue" Prelude.<$> customValue,
                            (JSON..=) "ValueWhenUnsetOption"
                              Prelude.<$> valueWhenUnsetOption])}
instance JSON.ToJSON IntegerValueWhenUnsetConfigurationProperty where
  toJSON IntegerValueWhenUnsetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomValue" Prelude.<$> customValue,
               (JSON..=) "ValueWhenUnsetOption"
                 Prelude.<$> valueWhenUnsetOption]))
instance Property "CustomValue" IntegerValueWhenUnsetConfigurationProperty where
  type PropertyType "CustomValue" IntegerValueWhenUnsetConfigurationProperty = Value Prelude.Double
  set newValue IntegerValueWhenUnsetConfigurationProperty {..}
    = IntegerValueWhenUnsetConfigurationProperty
        {customValue = Prelude.pure newValue, ..}
instance Property "ValueWhenUnsetOption" IntegerValueWhenUnsetConfigurationProperty where
  type PropertyType "ValueWhenUnsetOption" IntegerValueWhenUnsetConfigurationProperty = Value Prelude.Text
  set newValue IntegerValueWhenUnsetConfigurationProperty {..}
    = IntegerValueWhenUnsetConfigurationProperty
        {valueWhenUnsetOption = Prelude.pure newValue, ..}