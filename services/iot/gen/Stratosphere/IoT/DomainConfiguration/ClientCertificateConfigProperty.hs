module Stratosphere.IoT.DomainConfiguration.ClientCertificateConfigProperty (
        ClientCertificateConfigProperty(..),
        mkClientCertificateConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientCertificateConfigProperty
  = ClientCertificateConfigProperty {clientCertificateCallbackArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientCertificateConfigProperty ::
  ClientCertificateConfigProperty
mkClientCertificateConfigProperty
  = ClientCertificateConfigProperty
      {clientCertificateCallbackArn = Prelude.Nothing}
instance ToResourceProperties ClientCertificateConfigProperty where
  toResourceProperties ClientCertificateConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::DomainConfiguration.ClientCertificateConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientCertificateCallbackArn"
                              Prelude.<$> clientCertificateCallbackArn])}
instance JSON.ToJSON ClientCertificateConfigProperty where
  toJSON ClientCertificateConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientCertificateCallbackArn"
                 Prelude.<$> clientCertificateCallbackArn]))
instance Property "ClientCertificateCallbackArn" ClientCertificateConfigProperty where
  type PropertyType "ClientCertificateCallbackArn" ClientCertificateConfigProperty = Value Prelude.Text
  set newValue ClientCertificateConfigProperty {}
    = ClientCertificateConfigProperty
        {clientCertificateCallbackArn = Prelude.pure newValue, ..}