module Stratosphere.ElasticBeanstalk.Environment.OptionSettingProperty (
        OptionSettingProperty(..), mkOptionSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OptionSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-environment-optionsetting.html>
    OptionSettingProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-environment-optionsetting.html#cfn-elasticbeanstalk-environment-optionsetting-namespace>
                           namespace :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-environment-optionsetting.html#cfn-elasticbeanstalk-environment-optionsetting-optionname>
                           optionName :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-environment-optionsetting.html#cfn-elasticbeanstalk-environment-optionsetting-resourcename>
                           resourceName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-environment-optionsetting.html#cfn-elasticbeanstalk-environment-optionsetting-value>
                           value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOptionSettingProperty ::
  Value Prelude.Text -> Value Prelude.Text -> OptionSettingProperty
mkOptionSettingProperty namespace optionName
  = OptionSettingProperty
      {haddock_workaround_ = (), namespace = namespace,
       optionName = optionName, resourceName = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties OptionSettingProperty where
  toResourceProperties OptionSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::Environment.OptionSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Namespace" JSON..= namespace, "OptionName" JSON..= optionName]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceName" Prelude.<$> resourceName,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON OptionSettingProperty where
  toJSON OptionSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Namespace" JSON..= namespace, "OptionName" JSON..= optionName]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceName" Prelude.<$> resourceName,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "Namespace" OptionSettingProperty where
  type PropertyType "Namespace" OptionSettingProperty = Value Prelude.Text
  set newValue OptionSettingProperty {..}
    = OptionSettingProperty {namespace = newValue, ..}
instance Property "OptionName" OptionSettingProperty where
  type PropertyType "OptionName" OptionSettingProperty = Value Prelude.Text
  set newValue OptionSettingProperty {..}
    = OptionSettingProperty {optionName = newValue, ..}
instance Property "ResourceName" OptionSettingProperty where
  type PropertyType "ResourceName" OptionSettingProperty = Value Prelude.Text
  set newValue OptionSettingProperty {..}
    = OptionSettingProperty {resourceName = Prelude.pure newValue, ..}
instance Property "Value" OptionSettingProperty where
  type PropertyType "Value" OptionSettingProperty = Value Prelude.Text
  set newValue OptionSettingProperty {..}
    = OptionSettingProperty {value = Prelude.pure newValue, ..}