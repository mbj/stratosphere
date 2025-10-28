module Stratosphere.Deadline.Queue (
        module Exports, Queue(..), mkQueue
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Deadline.Queue.JobAttachmentSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Queue.JobRunAsUserProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Queue
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queue.html>
    Queue {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queue.html#cfn-deadline-queue-allowedstorageprofileids>
           allowedStorageProfileIds :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queue.html#cfn-deadline-queue-defaultbudgetaction>
           defaultBudgetAction :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queue.html#cfn-deadline-queue-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queue.html#cfn-deadline-queue-displayname>
           displayName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queue.html#cfn-deadline-queue-farmid>
           farmId :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queue.html#cfn-deadline-queue-jobattachmentsettings>
           jobAttachmentSettings :: (Prelude.Maybe JobAttachmentSettingsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queue.html#cfn-deadline-queue-jobrunasuser>
           jobRunAsUser :: (Prelude.Maybe JobRunAsUserProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queue.html#cfn-deadline-queue-requiredfilesystemlocationnames>
           requiredFileSystemLocationNames :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queue.html#cfn-deadline-queue-rolearn>
           roleArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queue.html#cfn-deadline-queue-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueue :: Value Prelude.Text -> Value Prelude.Text -> Queue
mkQueue displayName farmId
  = Queue
      {haddock_workaround_ = (), displayName = displayName,
       farmId = farmId, allowedStorageProfileIds = Prelude.Nothing,
       defaultBudgetAction = Prelude.Nothing,
       description = Prelude.Nothing,
       jobAttachmentSettings = Prelude.Nothing,
       jobRunAsUser = Prelude.Nothing,
       requiredFileSystemLocationNames = Prelude.Nothing,
       roleArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Queue where
  toResourceProperties Queue {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Queue", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DisplayName" JSON..= displayName, "FarmId" JSON..= farmId]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedStorageProfileIds"
                                 Prelude.<$> allowedStorageProfileIds,
                               (JSON..=) "DefaultBudgetAction" Prelude.<$> defaultBudgetAction,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "JobAttachmentSettings"
                                 Prelude.<$> jobAttachmentSettings,
                               (JSON..=) "JobRunAsUser" Prelude.<$> jobRunAsUser,
                               (JSON..=) "RequiredFileSystemLocationNames"
                                 Prelude.<$> requiredFileSystemLocationNames,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Queue where
  toJSON Queue {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DisplayName" JSON..= displayName, "FarmId" JSON..= farmId]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedStorageProfileIds"
                    Prelude.<$> allowedStorageProfileIds,
                  (JSON..=) "DefaultBudgetAction" Prelude.<$> defaultBudgetAction,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "JobAttachmentSettings"
                    Prelude.<$> jobAttachmentSettings,
                  (JSON..=) "JobRunAsUser" Prelude.<$> jobRunAsUser,
                  (JSON..=) "RequiredFileSystemLocationNames"
                    Prelude.<$> requiredFileSystemLocationNames,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AllowedStorageProfileIds" Queue where
  type PropertyType "AllowedStorageProfileIds" Queue = ValueList Prelude.Text
  set newValue Queue {..}
    = Queue {allowedStorageProfileIds = Prelude.pure newValue, ..}
instance Property "DefaultBudgetAction" Queue where
  type PropertyType "DefaultBudgetAction" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {defaultBudgetAction = Prelude.pure newValue, ..}
instance Property "Description" Queue where
  type PropertyType "Description" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {description = Prelude.pure newValue, ..}
instance Property "DisplayName" Queue where
  type PropertyType "DisplayName" Queue = Value Prelude.Text
  set newValue Queue {..} = Queue {displayName = newValue, ..}
instance Property "FarmId" Queue where
  type PropertyType "FarmId" Queue = Value Prelude.Text
  set newValue Queue {..} = Queue {farmId = newValue, ..}
instance Property "JobAttachmentSettings" Queue where
  type PropertyType "JobAttachmentSettings" Queue = JobAttachmentSettingsProperty
  set newValue Queue {..}
    = Queue {jobAttachmentSettings = Prelude.pure newValue, ..}
instance Property "JobRunAsUser" Queue where
  type PropertyType "JobRunAsUser" Queue = JobRunAsUserProperty
  set newValue Queue {..}
    = Queue {jobRunAsUser = Prelude.pure newValue, ..}
instance Property "RequiredFileSystemLocationNames" Queue where
  type PropertyType "RequiredFileSystemLocationNames" Queue = ValueList Prelude.Text
  set newValue Queue {..}
    = Queue
        {requiredFileSystemLocationNames = Prelude.pure newValue, ..}
instance Property "RoleArn" Queue where
  type PropertyType "RoleArn" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {roleArn = Prelude.pure newValue, ..}
instance Property "Tags" Queue where
  type PropertyType "Tags" Queue = [Tag]
  set newValue Queue {..} = Queue {tags = Prelude.pure newValue, ..}