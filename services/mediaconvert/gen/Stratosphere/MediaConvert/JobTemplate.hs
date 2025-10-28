module Stratosphere.MediaConvert.JobTemplate (
        module Exports, JobTemplate(..), mkJobTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConvert.JobTemplate.AccelerationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConvert.JobTemplate.HopDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobTemplate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html>
    JobTemplate {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-accelerationsettings>
                 accelerationSettings :: (Prelude.Maybe AccelerationSettingsProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-category>
                 category :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-hopdestinations>
                 hopDestinations :: (Prelude.Maybe [HopDestinationProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-name>
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-priority>
                 priority :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-queue>
                 queue :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-settingsjson>
                 settingsJson :: JSON.Object,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-statusupdateinterval>
                 statusUpdateInterval :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-tags>
                 tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobTemplate :: JSON.Object -> JobTemplate
mkJobTemplate settingsJson
  = JobTemplate
      {haddock_workaround_ = (), settingsJson = settingsJson,
       accelerationSettings = Prelude.Nothing, category = Prelude.Nothing,
       description = Prelude.Nothing, hopDestinations = Prelude.Nothing,
       name = Prelude.Nothing, priority = Prelude.Nothing,
       queue = Prelude.Nothing, statusUpdateInterval = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties JobTemplate where
  toResourceProperties JobTemplate {..}
    = ResourceProperties
        {awsType = "AWS::MediaConvert::JobTemplate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SettingsJson" JSON..= settingsJson]
                           (Prelude.catMaybes
                              [(JSON..=) "AccelerationSettings" Prelude.<$> accelerationSettings,
                               (JSON..=) "Category" Prelude.<$> category,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "HopDestinations" Prelude.<$> hopDestinations,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Priority" Prelude.<$> priority,
                               (JSON..=) "Queue" Prelude.<$> queue,
                               (JSON..=) "StatusUpdateInterval" Prelude.<$> statusUpdateInterval,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON JobTemplate where
  toJSON JobTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SettingsJson" JSON..= settingsJson]
              (Prelude.catMaybes
                 [(JSON..=) "AccelerationSettings" Prelude.<$> accelerationSettings,
                  (JSON..=) "Category" Prelude.<$> category,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "HopDestinations" Prelude.<$> hopDestinations,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Priority" Prelude.<$> priority,
                  (JSON..=) "Queue" Prelude.<$> queue,
                  (JSON..=) "StatusUpdateInterval" Prelude.<$> statusUpdateInterval,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccelerationSettings" JobTemplate where
  type PropertyType "AccelerationSettings" JobTemplate = AccelerationSettingsProperty
  set newValue JobTemplate {..}
    = JobTemplate {accelerationSettings = Prelude.pure newValue, ..}
instance Property "Category" JobTemplate where
  type PropertyType "Category" JobTemplate = Value Prelude.Text
  set newValue JobTemplate {..}
    = JobTemplate {category = Prelude.pure newValue, ..}
instance Property "Description" JobTemplate where
  type PropertyType "Description" JobTemplate = Value Prelude.Text
  set newValue JobTemplate {..}
    = JobTemplate {description = Prelude.pure newValue, ..}
instance Property "HopDestinations" JobTemplate where
  type PropertyType "HopDestinations" JobTemplate = [HopDestinationProperty]
  set newValue JobTemplate {..}
    = JobTemplate {hopDestinations = Prelude.pure newValue, ..}
instance Property "Name" JobTemplate where
  type PropertyType "Name" JobTemplate = Value Prelude.Text
  set newValue JobTemplate {..}
    = JobTemplate {name = Prelude.pure newValue, ..}
instance Property "Priority" JobTemplate where
  type PropertyType "Priority" JobTemplate = Value Prelude.Integer
  set newValue JobTemplate {..}
    = JobTemplate {priority = Prelude.pure newValue, ..}
instance Property "Queue" JobTemplate where
  type PropertyType "Queue" JobTemplate = Value Prelude.Text
  set newValue JobTemplate {..}
    = JobTemplate {queue = Prelude.pure newValue, ..}
instance Property "SettingsJson" JobTemplate where
  type PropertyType "SettingsJson" JobTemplate = JSON.Object
  set newValue JobTemplate {..}
    = JobTemplate {settingsJson = newValue, ..}
instance Property "StatusUpdateInterval" JobTemplate where
  type PropertyType "StatusUpdateInterval" JobTemplate = Value Prelude.Text
  set newValue JobTemplate {..}
    = JobTemplate {statusUpdateInterval = Prelude.pure newValue, ..}
instance Property "Tags" JobTemplate where
  type PropertyType "Tags" JobTemplate = JSON.Object
  set newValue JobTemplate {..}
    = JobTemplate {tags = Prelude.pure newValue, ..}