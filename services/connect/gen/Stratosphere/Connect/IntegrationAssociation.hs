module Stratosphere.Connect.IntegrationAssociation (
        IntegrationAssociation(..), mkIntegrationAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegrationAssociation
  = IntegrationAssociation {instanceId :: (Value Prelude.Text),
                            integrationArn :: (Value Prelude.Text),
                            integrationType :: (Value Prelude.Text)}
mkIntegrationAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> IntegrationAssociation
mkIntegrationAssociation instanceId integrationArn integrationType
  = IntegrationAssociation
      {instanceId = instanceId, integrationArn = integrationArn,
       integrationType = integrationType}
instance ToResourceProperties IntegrationAssociation where
  toResourceProperties IntegrationAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Connect::IntegrationAssociation",
         properties = ["InstanceId" JSON..= instanceId,
                       "IntegrationArn" JSON..= integrationArn,
                       "IntegrationType" JSON..= integrationType]}
instance JSON.ToJSON IntegrationAssociation where
  toJSON IntegrationAssociation {..}
    = JSON.object
        ["InstanceId" JSON..= instanceId,
         "IntegrationArn" JSON..= integrationArn,
         "IntegrationType" JSON..= integrationType]
instance Property "InstanceId" IntegrationAssociation where
  type PropertyType "InstanceId" IntegrationAssociation = Value Prelude.Text
  set newValue IntegrationAssociation {..}
    = IntegrationAssociation {instanceId = newValue, ..}
instance Property "IntegrationArn" IntegrationAssociation where
  type PropertyType "IntegrationArn" IntegrationAssociation = Value Prelude.Text
  set newValue IntegrationAssociation {..}
    = IntegrationAssociation {integrationArn = newValue, ..}
instance Property "IntegrationType" IntegrationAssociation where
  type PropertyType "IntegrationType" IntegrationAssociation = Value Prelude.Text
  set newValue IntegrationAssociation {..}
    = IntegrationAssociation {integrationType = newValue, ..}