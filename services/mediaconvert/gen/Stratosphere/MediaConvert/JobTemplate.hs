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
  = JobTemplate {accelerationSettings :: (Prelude.Maybe AccelerationSettingsProperty),
                 category :: (Prelude.Maybe (Value Prelude.Text)),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 hopDestinations :: (Prelude.Maybe [HopDestinationProperty]),
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 priority :: (Prelude.Maybe (Value Prelude.Integer)),
                 queue :: (Prelude.Maybe (Value Prelude.Text)),
                 settingsJson :: JSON.Object,
                 statusUpdateInterval :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe JSON.Object)}
mkJobTemplate :: JSON.Object -> JobTemplate
mkJobTemplate settingsJson
  = JobTemplate
      {settingsJson = settingsJson,
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