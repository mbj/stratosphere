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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html>
    ConfigurationProfile {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-applicationid>
                          applicationId :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-description>
                          description :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-kmskeyidentifier>
                          kmsKeyIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-locationuri>
                          locationUri :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-name>
                          name :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-retrievalrolearn>
                          retrievalRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-tags>
                          tags :: (Prelude.Maybe [TagsProperty]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-type>
                          type' :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-validators>
                          validators :: (Prelude.Maybe [ValidatorsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationProfile ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ConfigurationProfile
mkConfigurationProfile applicationId locationUri name
  = ConfigurationProfile
      {haddock_workaround_ = (), applicationId = applicationId,
       locationUri = locationUri, name = name,
       description = Prelude.Nothing, kmsKeyIdentifier = Prelude.Nothing,
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
                               (JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier,
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
                  (JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier,
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
instance Property "KmsKeyIdentifier" ConfigurationProfile where
  type PropertyType "KmsKeyIdentifier" ConfigurationProfile = Value Prelude.Text
  set newValue ConfigurationProfile {..}
    = ConfigurationProfile
        {kmsKeyIdentifier = Prelude.pure newValue, ..}
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