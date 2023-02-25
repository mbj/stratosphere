module Stratosphere.RDS.OptionGroup (
        module Exports, OptionGroup(..), mkOptionGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RDS.OptionGroup.OptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OptionGroup
  = OptionGroup {engineName :: (Value Prelude.Text),
                 majorEngineVersion :: (Value Prelude.Text),
                 optionConfigurations :: (Prelude.Maybe [OptionConfigurationProperty]),
                 optionGroupDescription :: (Value Prelude.Text),
                 optionGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag])}
mkOptionGroup ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> OptionGroup
mkOptionGroup engineName majorEngineVersion optionGroupDescription
  = OptionGroup
      {engineName = engineName, majorEngineVersion = majorEngineVersion,
       optionGroupDescription = optionGroupDescription,
       optionConfigurations = Prelude.Nothing,
       optionGroupName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties OptionGroup where
  toResourceProperties OptionGroup {..}
    = ResourceProperties
        {awsType = "AWS::RDS::OptionGroup",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EngineName" JSON..= engineName,
                            "MajorEngineVersion" JSON..= majorEngineVersion,
                            "OptionGroupDescription" JSON..= optionGroupDescription]
                           (Prelude.catMaybes
                              [(JSON..=) "OptionConfigurations" Prelude.<$> optionConfigurations,
                               (JSON..=) "OptionGroupName" Prelude.<$> optionGroupName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON OptionGroup where
  toJSON OptionGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EngineName" JSON..= engineName,
               "MajorEngineVersion" JSON..= majorEngineVersion,
               "OptionGroupDescription" JSON..= optionGroupDescription]
              (Prelude.catMaybes
                 [(JSON..=) "OptionConfigurations" Prelude.<$> optionConfigurations,
                  (JSON..=) "OptionGroupName" Prelude.<$> optionGroupName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "EngineName" OptionGroup where
  type PropertyType "EngineName" OptionGroup = Value Prelude.Text
  set newValue OptionGroup {..}
    = OptionGroup {engineName = newValue, ..}
instance Property "MajorEngineVersion" OptionGroup where
  type PropertyType "MajorEngineVersion" OptionGroup = Value Prelude.Text
  set newValue OptionGroup {..}
    = OptionGroup {majorEngineVersion = newValue, ..}
instance Property "OptionConfigurations" OptionGroup where
  type PropertyType "OptionConfigurations" OptionGroup = [OptionConfigurationProperty]
  set newValue OptionGroup {..}
    = OptionGroup {optionConfigurations = Prelude.pure newValue, ..}
instance Property "OptionGroupDescription" OptionGroup where
  type PropertyType "OptionGroupDescription" OptionGroup = Value Prelude.Text
  set newValue OptionGroup {..}
    = OptionGroup {optionGroupDescription = newValue, ..}
instance Property "OptionGroupName" OptionGroup where
  type PropertyType "OptionGroupName" OptionGroup = Value Prelude.Text
  set newValue OptionGroup {..}
    = OptionGroup {optionGroupName = Prelude.pure newValue, ..}
instance Property "Tags" OptionGroup where
  type PropertyType "Tags" OptionGroup = [Tag]
  set newValue OptionGroup {..}
    = OptionGroup {tags = Prelude.pure newValue, ..}