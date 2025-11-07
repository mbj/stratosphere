module Stratosphere.QuickSight.Template.StringValueWhenUnsetConfigurationProperty (
        StringValueWhenUnsetConfigurationProperty(..),
        mkStringValueWhenUnsetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringValueWhenUnsetConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-stringvaluewhenunsetconfiguration.html>
    StringValueWhenUnsetConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-stringvaluewhenunsetconfiguration.html#cfn-quicksight-template-stringvaluewhenunsetconfiguration-customvalue>
                                               customValue :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-stringvaluewhenunsetconfiguration.html#cfn-quicksight-template-stringvaluewhenunsetconfiguration-valuewhenunsetoption>
                                               valueWhenUnsetOption :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStringValueWhenUnsetConfigurationProperty ::
  StringValueWhenUnsetConfigurationProperty
mkStringValueWhenUnsetConfigurationProperty
  = StringValueWhenUnsetConfigurationProperty
      {haddock_workaround_ = (), customValue = Prelude.Nothing,
       valueWhenUnsetOption = Prelude.Nothing}
instance ToResourceProperties StringValueWhenUnsetConfigurationProperty where
  toResourceProperties StringValueWhenUnsetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.StringValueWhenUnsetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomValue" Prelude.<$> customValue,
                            (JSON..=) "ValueWhenUnsetOption"
                              Prelude.<$> valueWhenUnsetOption])}
instance JSON.ToJSON StringValueWhenUnsetConfigurationProperty where
  toJSON StringValueWhenUnsetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomValue" Prelude.<$> customValue,
               (JSON..=) "ValueWhenUnsetOption"
                 Prelude.<$> valueWhenUnsetOption]))
instance Property "CustomValue" StringValueWhenUnsetConfigurationProperty where
  type PropertyType "CustomValue" StringValueWhenUnsetConfigurationProperty = Value Prelude.Text
  set newValue StringValueWhenUnsetConfigurationProperty {..}
    = StringValueWhenUnsetConfigurationProperty
        {customValue = Prelude.pure newValue, ..}
instance Property "ValueWhenUnsetOption" StringValueWhenUnsetConfigurationProperty where
  type PropertyType "ValueWhenUnsetOption" StringValueWhenUnsetConfigurationProperty = Value Prelude.Text
  set newValue StringValueWhenUnsetConfigurationProperty {..}
    = StringValueWhenUnsetConfigurationProperty
        {valueWhenUnsetOption = Prelude.pure newValue, ..}