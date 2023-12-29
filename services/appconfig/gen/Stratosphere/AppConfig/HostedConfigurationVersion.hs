module Stratosphere.AppConfig.HostedConfigurationVersion (
        HostedConfigurationVersion(..), mkHostedConfigurationVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostedConfigurationVersion
  = HostedConfigurationVersion {applicationId :: (Value Prelude.Text),
                                configurationProfileId :: (Value Prelude.Text),
                                content :: (Value Prelude.Text),
                                contentType :: (Value Prelude.Text),
                                description :: (Prelude.Maybe (Value Prelude.Text)),
                                latestVersionNumber :: (Prelude.Maybe (Value Prelude.Double)),
                                versionLabel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHostedConfigurationVersion ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> HostedConfigurationVersion
mkHostedConfigurationVersion
  applicationId
  configurationProfileId
  content
  contentType
  = HostedConfigurationVersion
      {applicationId = applicationId,
       configurationProfileId = configurationProfileId, content = content,
       contentType = contentType, description = Prelude.Nothing,
       latestVersionNumber = Prelude.Nothing,
       versionLabel = Prelude.Nothing}
instance ToResourceProperties HostedConfigurationVersion where
  toResourceProperties HostedConfigurationVersion {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::HostedConfigurationVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId,
                            "ConfigurationProfileId" JSON..= configurationProfileId,
                            "Content" JSON..= content, "ContentType" JSON..= contentType]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "LatestVersionNumber" Prelude.<$> latestVersionNumber,
                               (JSON..=) "VersionLabel" Prelude.<$> versionLabel]))}
instance JSON.ToJSON HostedConfigurationVersion where
  toJSON HostedConfigurationVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId,
               "ConfigurationProfileId" JSON..= configurationProfileId,
               "Content" JSON..= content, "ContentType" JSON..= contentType]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "LatestVersionNumber" Prelude.<$> latestVersionNumber,
                  (JSON..=) "VersionLabel" Prelude.<$> versionLabel])))
instance Property "ApplicationId" HostedConfigurationVersion where
  type PropertyType "ApplicationId" HostedConfigurationVersion = Value Prelude.Text
  set newValue HostedConfigurationVersion {..}
    = HostedConfigurationVersion {applicationId = newValue, ..}
instance Property "ConfigurationProfileId" HostedConfigurationVersion where
  type PropertyType "ConfigurationProfileId" HostedConfigurationVersion = Value Prelude.Text
  set newValue HostedConfigurationVersion {..}
    = HostedConfigurationVersion
        {configurationProfileId = newValue, ..}
instance Property "Content" HostedConfigurationVersion where
  type PropertyType "Content" HostedConfigurationVersion = Value Prelude.Text
  set newValue HostedConfigurationVersion {..}
    = HostedConfigurationVersion {content = newValue, ..}
instance Property "ContentType" HostedConfigurationVersion where
  type PropertyType "ContentType" HostedConfigurationVersion = Value Prelude.Text
  set newValue HostedConfigurationVersion {..}
    = HostedConfigurationVersion {contentType = newValue, ..}
instance Property "Description" HostedConfigurationVersion where
  type PropertyType "Description" HostedConfigurationVersion = Value Prelude.Text
  set newValue HostedConfigurationVersion {..}
    = HostedConfigurationVersion
        {description = Prelude.pure newValue, ..}
instance Property "LatestVersionNumber" HostedConfigurationVersion where
  type PropertyType "LatestVersionNumber" HostedConfigurationVersion = Value Prelude.Double
  set newValue HostedConfigurationVersion {..}
    = HostedConfigurationVersion
        {latestVersionNumber = Prelude.pure newValue, ..}
instance Property "VersionLabel" HostedConfigurationVersion where
  type PropertyType "VersionLabel" HostedConfigurationVersion = Value Prelude.Text
  set newValue HostedConfigurationVersion {..}
    = HostedConfigurationVersion
        {versionLabel = Prelude.pure newValue, ..}