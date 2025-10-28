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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html>
    OptionGroup {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-enginename>
                 engineName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-majorengineversion>
                 majorEngineVersion :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-optionconfigurations>
                 optionConfigurations :: (Prelude.Maybe [OptionConfigurationProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-optiongroupdescription>
                 optionGroupDescription :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-optiongroupname>
                 optionGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOptionGroup ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> OptionGroup
mkOptionGroup engineName majorEngineVersion optionGroupDescription
  = OptionGroup
      {haddock_workaround_ = (), engineName = engineName,
       majorEngineVersion = majorEngineVersion,
       optionGroupDescription = optionGroupDescription,
       optionConfigurations = Prelude.Nothing,
       optionGroupName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties OptionGroup where
  toResourceProperties OptionGroup {..}
    = ResourceProperties
        {awsType = "AWS::RDS::OptionGroup", supportsTags = Prelude.True,
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