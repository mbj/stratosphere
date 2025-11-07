module Stratosphere.ECS.Service.ForceNewDeploymentProperty (
        ForceNewDeploymentProperty(..), mkForceNewDeploymentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ForceNewDeploymentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-forcenewdeployment.html>
    ForceNewDeploymentProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-forcenewdeployment.html#cfn-ecs-service-forcenewdeployment-enableforcenewdeployment>
                                enableForceNewDeployment :: (Value Prelude.Bool),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-forcenewdeployment.html#cfn-ecs-service-forcenewdeployment-forcenewdeploymentnonce>
                                forceNewDeploymentNonce :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkForceNewDeploymentProperty ::
  Value Prelude.Bool -> ForceNewDeploymentProperty
mkForceNewDeploymentProperty enableForceNewDeployment
  = ForceNewDeploymentProperty
      {haddock_workaround_ = (),
       enableForceNewDeployment = enableForceNewDeployment,
       forceNewDeploymentNonce = Prelude.Nothing}
instance ToResourceProperties ForceNewDeploymentProperty where
  toResourceProperties ForceNewDeploymentProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ForceNewDeployment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EnableForceNewDeployment" JSON..= enableForceNewDeployment]
                           (Prelude.catMaybes
                              [(JSON..=) "ForceNewDeploymentNonce"
                                 Prelude.<$> forceNewDeploymentNonce]))}
instance JSON.ToJSON ForceNewDeploymentProperty where
  toJSON ForceNewDeploymentProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EnableForceNewDeployment" JSON..= enableForceNewDeployment]
              (Prelude.catMaybes
                 [(JSON..=) "ForceNewDeploymentNonce"
                    Prelude.<$> forceNewDeploymentNonce])))
instance Property "EnableForceNewDeployment" ForceNewDeploymentProperty where
  type PropertyType "EnableForceNewDeployment" ForceNewDeploymentProperty = Value Prelude.Bool
  set newValue ForceNewDeploymentProperty {..}
    = ForceNewDeploymentProperty
        {enableForceNewDeployment = newValue, ..}
instance Property "ForceNewDeploymentNonce" ForceNewDeploymentProperty where
  type PropertyType "ForceNewDeploymentNonce" ForceNewDeploymentProperty = Value Prelude.Text
  set newValue ForceNewDeploymentProperty {..}
    = ForceNewDeploymentProperty
        {forceNewDeploymentNonce = Prelude.pure newValue, ..}