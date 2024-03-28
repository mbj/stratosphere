module Stratosphere.CodeStarConnections.SyncConfiguration (
        SyncConfiguration(..), mkSyncConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SyncConfiguration
  = SyncConfiguration {branch :: (Value Prelude.Text),
                       configFile :: (Value Prelude.Text),
                       repositoryLinkId :: (Value Prelude.Text),
                       resourceName :: (Value Prelude.Text),
                       roleArn :: (Value Prelude.Text),
                       syncType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSyncConfiguration ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> Value Prelude.Text -> SyncConfiguration
mkSyncConfiguration
  branch
  configFile
  repositoryLinkId
  resourceName
  roleArn
  syncType
  = SyncConfiguration
      {branch = branch, configFile = configFile,
       repositoryLinkId = repositoryLinkId, resourceName = resourceName,
       roleArn = roleArn, syncType = syncType}
instance ToResourceProperties SyncConfiguration where
  toResourceProperties SyncConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::CodeStarConnections::SyncConfiguration",
         supportsTags = Prelude.False,
         properties = ["Branch" JSON..= branch,
                       "ConfigFile" JSON..= configFile,
                       "RepositoryLinkId" JSON..= repositoryLinkId,
                       "ResourceName" JSON..= resourceName, "RoleArn" JSON..= roleArn,
                       "SyncType" JSON..= syncType]}
instance JSON.ToJSON SyncConfiguration where
  toJSON SyncConfiguration {..}
    = JSON.object
        ["Branch" JSON..= branch, "ConfigFile" JSON..= configFile,
         "RepositoryLinkId" JSON..= repositoryLinkId,
         "ResourceName" JSON..= resourceName, "RoleArn" JSON..= roleArn,
         "SyncType" JSON..= syncType]
instance Property "Branch" SyncConfiguration where
  type PropertyType "Branch" SyncConfiguration = Value Prelude.Text
  set newValue SyncConfiguration {..}
    = SyncConfiguration {branch = newValue, ..}
instance Property "ConfigFile" SyncConfiguration where
  type PropertyType "ConfigFile" SyncConfiguration = Value Prelude.Text
  set newValue SyncConfiguration {..}
    = SyncConfiguration {configFile = newValue, ..}
instance Property "RepositoryLinkId" SyncConfiguration where
  type PropertyType "RepositoryLinkId" SyncConfiguration = Value Prelude.Text
  set newValue SyncConfiguration {..}
    = SyncConfiguration {repositoryLinkId = newValue, ..}
instance Property "ResourceName" SyncConfiguration where
  type PropertyType "ResourceName" SyncConfiguration = Value Prelude.Text
  set newValue SyncConfiguration {..}
    = SyncConfiguration {resourceName = newValue, ..}
instance Property "RoleArn" SyncConfiguration where
  type PropertyType "RoleArn" SyncConfiguration = Value Prelude.Text
  set newValue SyncConfiguration {..}
    = SyncConfiguration {roleArn = newValue, ..}
instance Property "SyncType" SyncConfiguration where
  type PropertyType "SyncType" SyncConfiguration = Value Prelude.Text
  set newValue SyncConfiguration {..}
    = SyncConfiguration {syncType = newValue, ..}