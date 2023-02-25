module Stratosphere.ECS.TaskDefinition.AuthorizationConfigProperty (
        AuthorizationConfigProperty(..), mkAuthorizationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthorizationConfigProperty
  = AuthorizationConfigProperty {accessPointId :: (Prelude.Maybe (Value Prelude.Text)),
                                 iAM :: (Prelude.Maybe (Value Prelude.Text))}
mkAuthorizationConfigProperty :: AuthorizationConfigProperty
mkAuthorizationConfigProperty
  = AuthorizationConfigProperty
      {accessPointId = Prelude.Nothing, iAM = Prelude.Nothing}
instance ToResourceProperties AuthorizationConfigProperty where
  toResourceProperties AuthorizationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.AuthorizationConfig",
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