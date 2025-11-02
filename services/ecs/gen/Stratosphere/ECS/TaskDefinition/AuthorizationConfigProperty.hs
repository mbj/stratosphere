module Stratosphere.ECS.TaskDefinition.AuthorizationConfigProperty (
        AuthorizationConfigProperty(..), mkAuthorizationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthorizationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-authorizationconfig.html>
    AuthorizationConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-authorizationconfig.html#cfn-ecs-taskdefinition-authorizationconfig-accesspointid>
                                 accessPointId :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-authorizationconfig.html#cfn-ecs-taskdefinition-authorizationconfig-iam>
                                 iAM :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthorizationConfigProperty :: AuthorizationConfigProperty
mkAuthorizationConfigProperty
  = AuthorizationConfigProperty
      {haddock_workaround_ = (), accessPointId = Prelude.Nothing,
       iAM = Prelude.Nothing}
instance ToResourceProperties AuthorizationConfigProperty where
  toResourceProperties AuthorizationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.AuthorizationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessPointId" Prelude.<$> accessPointId,
                            (JSON..=) "IAM" Prelude.<$> iAM])}
instance JSON.ToJSON AuthorizationConfigProperty where
  toJSON AuthorizationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessPointId" Prelude.<$> accessPointId,
               (JSON..=) "IAM" Prelude.<$> iAM]))
instance Property "AccessPointId" AuthorizationConfigProperty where
  type PropertyType "AccessPointId" AuthorizationConfigProperty = Value Prelude.Text
  set newValue AuthorizationConfigProperty {..}
    = AuthorizationConfigProperty
        {accessPointId = Prelude.pure newValue, ..}
instance Property "IAM" AuthorizationConfigProperty where
  type PropertyType "IAM" AuthorizationConfigProperty = Value Prelude.Text
  set newValue AuthorizationConfigProperty {..}
    = AuthorizationConfigProperty {iAM = Prelude.pure newValue, ..}