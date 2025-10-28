module Stratosphere.CodeStarConnections.SyncConfiguration (
        SyncConfiguration(..), mkSyncConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SyncConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-syncconfiguration.html>
    SyncConfiguration {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-syncconfiguration.html#cfn-codestarconnections-syncconfiguration-branch>
                       branch :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-syncconfiguration.html#cfn-codestarconnections-syncconfiguration-configfile>
                       configFile :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-syncconfiguration.html#cfn-codestarconnections-syncconfiguration-publishdeploymentstatus>
                       publishDeploymentStatus :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-syncconfiguration.html#cfn-codestarconnections-syncconfiguration-repositorylinkid>
                       repositoryLinkId :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-syncconfiguration.html#cfn-codestarconnections-syncconfiguration-resourcename>
                       resourceName :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-syncconfiguration.html#cfn-codestarconnections-syncconfiguration-rolearn>
                       roleArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-syncconfiguration.html#cfn-codestarconnections-syncconfiguration-synctype>
                       syncType :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-syncconfiguration.html#cfn-codestarconnections-syncconfiguration-triggerresourceupdateon>
                       triggerResourceUpdateOn :: (Prelude.Maybe (Value Prelude.Text))}
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
      {haddock_workaround_ = (), branch = branch,
       configFile = configFile, repositoryLinkId = repositoryLinkId,
       resourceName = resourceName, roleArn = roleArn,
       syncType = syncType, publishDeploymentStatus = Prelude.Nothing,
       triggerResourceUpdateOn = Prelude.Nothing}
instance ToResourceProperties SyncConfiguration where
  toResourceProperties SyncConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::CodeStarConnections::SyncConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Branch" JSON..= branch, "ConfigFile" JSON..= configFile,
                            "RepositoryLinkId" JSON..= repositoryLinkId,
                            "ResourceName" JSON..= resourceName, "RoleArn" JSON..= roleArn,
                            "SyncType" JSON..= syncType]
                           (Prelude.catMaybes
                              [(JSON..=) "PublishDeploymentStatus"
                                 Prelude.<$> publishDeploymentStatus,
                               (JSON..=) "TriggerResourceUpdateOn"
                                 Prelude.<$> triggerResourceUpdateOn]))}
instance JSON.ToJSON SyncConfiguration where
  toJSON SyncConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Branch" JSON..= branch, "ConfigFile" JSON..= configFile,
               "RepositoryLinkId" JSON..= repositoryLinkId,
               "ResourceName" JSON..= resourceName, "RoleArn" JSON..= roleArn,
               "SyncType" JSON..= syncType]
              (Prelude.catMaybes
                 [(JSON..=) "PublishDeploymentStatus"
                    Prelude.<$> publishDeploymentStatus,
                  (JSON..=) "TriggerResourceUpdateOn"
                    Prelude.<$> triggerResourceUpdateOn])))
instance Property "Branch" SyncConfiguration where
  type PropertyType "Branch" SyncConfiguration = Value Prelude.Text
  set newValue SyncConfiguration {..}
    = SyncConfiguration {branch = newValue, ..}
instance Property "ConfigFile" SyncConfiguration where
  type PropertyType "ConfigFile" SyncConfiguration = Value Prelude.Text
  set newValue SyncConfiguration {..}
    = SyncConfiguration {configFile = newValue, ..}
instance Property "PublishDeploymentStatus" SyncConfiguration where
  type PropertyType "PublishDeploymentStatus" SyncConfiguration = Value Prelude.Text
  set newValue SyncConfiguration {..}
    = SyncConfiguration
        {publishDeploymentStatus = Prelude.pure newValue, ..}
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
instance Property "TriggerResourceUpdateOn" SyncConfiguration where
  type PropertyType "TriggerResourceUpdateOn" SyncConfiguration = Value Prelude.Text
  set newValue SyncConfiguration {..}
    = SyncConfiguration
        {triggerResourceUpdateOn = Prelude.pure newValue, ..}