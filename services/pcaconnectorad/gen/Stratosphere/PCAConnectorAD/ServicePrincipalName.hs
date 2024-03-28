module Stratosphere.PCAConnectorAD.ServicePrincipalName (
        ServicePrincipalName(..), mkServicePrincipalName
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServicePrincipalName
  = ServicePrincipalName {connectorArn :: (Prelude.Maybe (Value Prelude.Text)),
                          directoryRegistrationArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServicePrincipalName :: ServicePrincipalName
mkServicePrincipalName
  = ServicePrincipalName
      {connectorArn = Prelude.Nothing,
       directoryRegistrationArn = Prelude.Nothing}
instance ToResourceProperties ServicePrincipalName where
  toResourceProperties ServicePrincipalName {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::ServicePrincipalName",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectorArn" Prelude.<$> connectorArn,
                            (JSON..=) "DirectoryRegistrationArn"
                              Prelude.<$> directoryRegistrationArn])}
instance JSON.ToJSON ServicePrincipalName where
  toJSON ServicePrincipalName {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectorArn" Prelude.<$> connectorArn,
               (JSON..=) "DirectoryRegistrationArn"
                 Prelude.<$> directoryRegistrationArn]))
instance Property "ConnectorArn" ServicePrincipalName where
  type PropertyType "ConnectorArn" ServicePrincipalName = Value Prelude.Text
  set newValue ServicePrincipalName {..}
    = ServicePrincipalName {connectorArn = Prelude.pure newValue, ..}
instance Property "DirectoryRegistrationArn" ServicePrincipalName where
  type PropertyType "DirectoryRegistrationArn" ServicePrincipalName = Value Prelude.Text
  set newValue ServicePrincipalName {..}
    = ServicePrincipalName
        {directoryRegistrationArn = Prelude.pure newValue, ..}