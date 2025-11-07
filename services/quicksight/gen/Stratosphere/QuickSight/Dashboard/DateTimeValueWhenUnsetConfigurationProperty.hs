module Stratosphere.QuickSight.Dashboard.DateTimeValueWhenUnsetConfigurationProperty (
        DateTimeValueWhenUnsetConfigurationProperty(..),
        mkDateTimeValueWhenUnsetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimeValueWhenUnsetConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-datetimevaluewhenunsetconfiguration.html>
    DateTimeValueWhenUnsetConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-datetimevaluewhenunsetconfiguration.html#cfn-quicksight-dashboard-datetimevaluewhenunsetconfiguration-customvalue>
                                                 customValue :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-datetimevaluewhenunsetconfiguration.html#cfn-quicksight-dashboard-datetimevaluewhenunsetconfiguration-valuewhenunsetoption>
                                                 valueWhenUnsetOption :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateTimeValueWhenUnsetConfigurationProperty ::
  DateTimeValueWhenUnsetConfigurationProperty
mkDateTimeValueWhenUnsetConfigurationProperty
  = DateTimeValueWhenUnsetConfigurationProperty
      {haddock_workaround_ = (), customValue = Prelude.Nothing,
       valueWhenUnsetOption = Prelude.Nothing}
instance ToResourceProperties DateTimeValueWhenUnsetConfigurationProperty where
  toResourceProperties
    DateTimeValueWhenUnsetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DateTimeValueWhenUnsetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomValue" Prelude.<$> customValue,
                            (JSON..=) "ValueWhenUnsetOption"
                              Prelude.<$> valueWhenUnsetOption])}
instance JSON.ToJSON DateTimeValueWhenUnsetConfigurationProperty where
  toJSON DateTimeValueWhenUnsetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomValue" Prelude.<$> customValue,
               (JSON..=) "ValueWhenUnsetOption"
                 Prelude.<$> valueWhenUnsetOption]))
instance Property "CustomValue" DateTimeValueWhenUnsetConfigurationProperty where
  type PropertyType "CustomValue" DateTimeValueWhenUnsetConfigurationProperty = Value Prelude.Text
  set newValue DateTimeValueWhenUnsetConfigurationProperty {..}
    = DateTimeValueWhenUnsetConfigurationProperty
        {customValue = Prelude.pure newValue, ..}
instance Property "ValueWhenUnsetOption" DateTimeValueWhenUnsetConfigurationProperty where
  type PropertyType "ValueWhenUnsetOption" DateTimeValueWhenUnsetConfigurationProperty = Value Prelude.Text
  set newValue DateTimeValueWhenUnsetConfigurationProperty {..}
    = DateTimeValueWhenUnsetConfigurationProperty
        {valueWhenUnsetOption = Prelude.pure newValue, ..}