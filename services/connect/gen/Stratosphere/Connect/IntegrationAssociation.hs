module Stratosphere.Connect.IntegrationAssociation (
        IntegrationAssociation(..), mkIntegrationAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegrationAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-integrationassociation.html>
    IntegrationAssociation {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-integrationassociation.html#cfn-connect-integrationassociation-instanceid>
                            instanceId :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-integrationassociation.html#cfn-connect-integrationassociation-integrationarn>
                            integrationArn :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-integrationassociation.html#cfn-connect-integrationassociation-integrationtype>
                            integrationType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegrationAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> IntegrationAssociation
mkIntegrationAssociation instanceId integrationArn integrationType
  = IntegrationAssociation
      {haddock_workaround_ = (), instanceId = instanceId,
       integrationArn = integrationArn, integrationType = integrationType}
instance ToResourceProperties IntegrationAssociation where
  toResourceProperties IntegrationAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Connect::IntegrationAssociation",
         supportsTags = Prelude.False,
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