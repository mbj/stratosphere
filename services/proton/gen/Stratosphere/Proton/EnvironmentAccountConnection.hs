module Stratosphere.Proton.EnvironmentAccountConnection (
        EnvironmentAccountConnection(..), mkEnvironmentAccountConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EnvironmentAccountConnection
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-environmentaccountconnection.html>
    EnvironmentAccountConnection {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-environmentaccountconnection.html#cfn-proton-environmentaccountconnection-codebuildrolearn>
                                  codebuildRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-environmentaccountconnection.html#cfn-proton-environmentaccountconnection-componentrolearn>
                                  componentRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-environmentaccountconnection.html#cfn-proton-environmentaccountconnection-environmentaccountid>
                                  environmentAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-environmentaccountconnection.html#cfn-proton-environmentaccountconnection-environmentname>
                                  environmentName :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-environmentaccountconnection.html#cfn-proton-environmentaccountconnection-managementaccountid>
                                  managementAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-environmentaccountconnection.html#cfn-proton-environmentaccountconnection-rolearn>
                                  roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-environmentaccountconnection.html#cfn-proton-environmentaccountconnection-tags>
                                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentAccountConnection :: EnvironmentAccountConnection
mkEnvironmentAccountConnection
  = EnvironmentAccountConnection
      {haddock_workaround_ = (), codebuildRoleArn = Prelude.Nothing,
       componentRoleArn = Prelude.Nothing,
       environmentAccountId = Prelude.Nothing,
       environmentName = Prelude.Nothing,
       managementAccountId = Prelude.Nothing, roleArn = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties EnvironmentAccountConnection where
  toResourceProperties EnvironmentAccountConnection {..}
    = ResourceProperties
        {awsType = "AWS::Proton::EnvironmentAccountConnection",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CodebuildRoleArn" Prelude.<$> codebuildRoleArn,
                            (JSON..=) "ComponentRoleArn" Prelude.<$> componentRoleArn,
                            (JSON..=) "EnvironmentAccountId" Prelude.<$> environmentAccountId,
                            (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
                            (JSON..=) "ManagementAccountId" Prelude.<$> managementAccountId,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON EnvironmentAccountConnection where
  toJSON EnvironmentAccountConnection {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CodebuildRoleArn" Prelude.<$> codebuildRoleArn,
               (JSON..=) "ComponentRoleArn" Prelude.<$> componentRoleArn,
               (JSON..=) "EnvironmentAccountId" Prelude.<$> environmentAccountId,
               (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
               (JSON..=) "ManagementAccountId" Prelude.<$> managementAccountId,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "CodebuildRoleArn" EnvironmentAccountConnection where
  type PropertyType "CodebuildRoleArn" EnvironmentAccountConnection = Value Prelude.Text
  set newValue EnvironmentAccountConnection {..}
    = EnvironmentAccountConnection
        {codebuildRoleArn = Prelude.pure newValue, ..}
instance Property "ComponentRoleArn" EnvironmentAccountConnection where
  type PropertyType "ComponentRoleArn" EnvironmentAccountConnection = Value Prelude.Text
  set newValue EnvironmentAccountConnection {..}
    = EnvironmentAccountConnection
        {componentRoleArn = Prelude.pure newValue, ..}
instance Property "EnvironmentAccountId" EnvironmentAccountConnection where
  type PropertyType "EnvironmentAccountId" EnvironmentAccountConnection = Value Prelude.Text
  set newValue EnvironmentAccountConnection {..}
    = EnvironmentAccountConnection
        {environmentAccountId = Prelude.pure newValue, ..}
instance Property "EnvironmentName" EnvironmentAccountConnection where
  type PropertyType "EnvironmentName" EnvironmentAccountConnection = Value Prelude.Text
  set newValue EnvironmentAccountConnection {..}
    = EnvironmentAccountConnection
        {environmentName = Prelude.pure newValue, ..}
instance Property "ManagementAccountId" EnvironmentAccountConnection where
  type PropertyType "ManagementAccountId" EnvironmentAccountConnection = Value Prelude.Text
  set newValue EnvironmentAccountConnection {..}
    = EnvironmentAccountConnection
        {managementAccountId = Prelude.pure newValue, ..}
instance Property "RoleArn" EnvironmentAccountConnection where
  type PropertyType "RoleArn" EnvironmentAccountConnection = Value Prelude.Text
  set newValue EnvironmentAccountConnection {..}
    = EnvironmentAccountConnection
        {roleArn = Prelude.pure newValue, ..}
instance Property "Tags" EnvironmentAccountConnection where
  type PropertyType "Tags" EnvironmentAccountConnection = [Tag]
  set newValue EnvironmentAccountConnection {..}
    = EnvironmentAccountConnection {tags = Prelude.pure newValue, ..}