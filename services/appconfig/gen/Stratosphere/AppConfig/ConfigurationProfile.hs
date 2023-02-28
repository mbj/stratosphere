module Stratosphere.AppConfig.ConfigurationProfile (
        module Exports, ConfigurationProfile(..), mkConfigurationProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppConfig.ConfigurationProfile.TagsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppConfig.ConfigurationProfile.ValidatorsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationProfile
  = ConfigurationProfile {applicationId :: (Value Prelude.Text),
                          description :: (Prelude.Maybe (Value Prelude.Text)),
                          locationUri :: (Value Prelude.Text),
                          name :: (Value Prelude.Text),
                          retrievalRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                          tags :: (Prelude.Maybe [TagsProperty]),
                          type' :: (Prelude.Maybe (Value Prelude.Text)),
                          validators :: (Prelude.Maybe [ValidatorsProperty])}
mkConfigurationProfile ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ConfigurationProfile
mkConfigurationProfile applicationId locationUri name
  = ConfigurationProfile
      {applicationId = applicationId, locationUri = locationUri,
       name = name, description = Prelude.Nothing,
       retrievalRoleArn = Prelude.Nothing, tags = Prelude.Nothing,
       type' = Prelude.Nothing, validators = Prelude.Nothing}
instance ToResourceProperties ConfigurationProfile where
  toResourceProperties ConfigurationProfile {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::ConfigurationProfile",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId,
                            "LocationUri" JSON..= locationUri, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "RetrievalRoleArn" Prelude.<$> retrievalRoleArn,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Type" Prelude.<$> type',
                               (JSON..=) "Validators" Prelude.<$> validators]))}
instance JSON.ToJSON ConfigurationProfile where
  toJSON ConfigurationProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId,
               "LocationUri" JSON..= locationUri, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "RetrievalRoleArn" Prelude.<$> retrievalRoleArn,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Type" Prelude.<$> type',
                  (JSON..=) "Validators" Prelude.<$> validators])))
instance Property "ApplicationId" ConfigurationProfile where
  type PropertyType "ApplicationId" ConfigurationProfile = Value Prelude.Text
  set newValue ConfigurationProfile {..}
    = ConfigurationProfile {applicationId = newValue, ..}
instance Property "Description" ConfigurationProfile where
  type PropertyType "Description" ConfigurationProfile = Value Prelude.Text
  set newValue ConfigurationProfile {..}
    = ConfigurationProfile {description = Prelude.pure newValue, ..}
instance Property "LocationUri" ConfigurationProfile where
  type PropertyType "LocationUri" ConfigurationProfile = Value Prelude.Text
  set newValue ConfigurationProfile {..}
    = ConfigurationProfile {locationUri = newValue, ..}
instance Property "Name" ConfigurationProfile where
  type PropertyType "Name" ConfigurationProfile = Value Prelude.Text
  set newValue ConfigurationProfile {..}
    = ConfigurationProfile {name = newValue, ..}
instance Property "RetrievalRoleArn" ConfigurationProfile where
  type PropertyType "RetrievalRoleArn" ConfigurationProfile = Value Prelude.Text
  set newValue ConfigurationProfile {..}
    = ConfigurationProfile
        {retrievalRoleArn = Prelude.pure newValue, ..}
instance Property "Tags" ConfigurationProfile where
  type PropertyType "Tags" ConfigurationProfile = [TagsProperty]
  set newValue ConfigurationProfile {..}
    = ConfigurationProfile {tags = Prelude.pure newValue, ..}
instance Property "Type" ConfigurationProfile where
  type PropertyType "Type" ConfigurationProfile = Value Prelude.Text
  set newValue ConfigurationProfile {..}
    = ConfigurationProfile {type' = Prelude.pure newValue, ..}
instance Property "Validators" ConfigurationProfile where
  type PropertyType "Validators" ConfigurationProfile = [ValidatorsProperty]
  set newValue ConfigurationProfile {..}
    = ConfigurationProfile {validators = Prelude.pure newValue, ..}