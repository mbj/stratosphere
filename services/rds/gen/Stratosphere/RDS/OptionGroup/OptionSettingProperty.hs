module Stratosphere.RDS.OptionGroup.OptionSettingProperty (
        OptionSettingProperty(..), mkOptionSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OptionSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionsetting.html>
    OptionSettingProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionsetting.html#cfn-rds-optiongroup-optionsetting-name>
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionsetting.html#cfn-rds-optiongroup-optionsetting-value>
                           value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOptionSettingProperty :: OptionSettingProperty
mkOptionSettingProperty
  = OptionSettingProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties OptionSettingProperty where
  toResourceProperties OptionSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::OptionGroup.OptionSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON OptionSettingProperty where
  toJSON OptionSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" OptionSettingProperty where
  type PropertyType "Name" OptionSettingProperty = Value Prelude.Text
  set newValue OptionSettingProperty {..}
    = OptionSettingProperty {name = Prelude.pure newValue, ..}
instance Property "Value" OptionSettingProperty where
  type PropertyType "Value" OptionSettingProperty = Value Prelude.Text
  set newValue OptionSettingProperty {..}
    = OptionSettingProperty {value = Prelude.pure newValue, ..}