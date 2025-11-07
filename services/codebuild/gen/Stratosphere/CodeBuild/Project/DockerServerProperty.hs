module Stratosphere.CodeBuild.Project.DockerServerProperty (
        DockerServerProperty(..), mkDockerServerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DockerServerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-dockerserver.html>
    DockerServerProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-dockerserver.html#cfn-codebuild-project-dockerserver-computetype>
                          computeType :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-dockerserver.html#cfn-codebuild-project-dockerserver-securitygroupids>
                          securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDockerServerProperty ::
  Value Prelude.Text -> DockerServerProperty
mkDockerServerProperty computeType
  = DockerServerProperty
      {haddock_workaround_ = (), computeType = computeType,
       securityGroupIds = Prelude.Nothing}
instance ToResourceProperties DockerServerProperty where
  toResourceProperties DockerServerProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.DockerServer",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputeType" JSON..= computeType]
                           (Prelude.catMaybes
                              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds]))}
instance JSON.ToJSON DockerServerProperty where
  toJSON DockerServerProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputeType" JSON..= computeType]
              (Prelude.catMaybes
                 [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds])))
instance Property "ComputeType" DockerServerProperty where
  type PropertyType "ComputeType" DockerServerProperty = Value Prelude.Text
  set newValue DockerServerProperty {..}
    = DockerServerProperty {computeType = newValue, ..}
instance Property "SecurityGroupIds" DockerServerProperty where
  type PropertyType "SecurityGroupIds" DockerServerProperty = ValueList Prelude.Text
  set newValue DockerServerProperty {..}
    = DockerServerProperty
        {securityGroupIds = Prelude.pure newValue, ..}