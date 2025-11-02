module Stratosphere.StepFunctions.Activity (
        module Exports, Activity(..), mkActivity
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.StepFunctions.Activity.EncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.StepFunctions.Activity.TagsEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Activity
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html>
    Activity {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html#cfn-stepfunctions-activity-encryptionconfiguration>
              encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html#cfn-stepfunctions-activity-name>
              name :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html#cfn-stepfunctions-activity-tags>
              tags :: (Prelude.Maybe [TagsEntryProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActivity :: Value Prelude.Text -> Activity
mkActivity name
  = Activity
      {haddock_workaround_ = (), name = name,
       encryptionConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Activity where
  toResourceProperties Activity {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::Activity",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionConfiguration"
                                 Prelude.<$> encryptionConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Activity where
  toJSON Activity {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionConfiguration"
                    Prelude.<$> encryptionConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "EncryptionConfiguration" Activity where
  type PropertyType "EncryptionConfiguration" Activity = EncryptionConfigurationProperty
  set newValue Activity {..}
    = Activity {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "Name" Activity where
  type PropertyType "Name" Activity = Value Prelude.Text
  set newValue Activity {..} = Activity {name = newValue, ..}
instance Property "Tags" Activity where
  type PropertyType "Tags" Activity = [TagsEntryProperty]
  set newValue Activity {..}
    = Activity {tags = Prelude.pure newValue, ..}