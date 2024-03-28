module Stratosphere.IoT.DomainConfiguration.ServerCertificateConfigProperty (
        ServerCertificateConfigProperty(..),
        mkServerCertificateConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerCertificateConfigProperty
  = ServerCertificateConfigProperty {enableOCSPCheck :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerCertificateConfigProperty ::
  ServerCertificateConfigProperty
mkServerCertificateConfigProperty
  = ServerCertificateConfigProperty
      {enableOCSPCheck = Prelude.Nothing}
instance ToResourceProperties ServerCertificateConfigProperty where
  toResourceProperties ServerCertificateConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::DomainConfiguration.ServerCertificateConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableOCSPCheck" Prelude.<$> enableOCSPCheck])}
instance JSON.ToJSON ServerCertificateConfigProperty where
  toJSON ServerCertificateConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableOCSPCheck" Prelude.<$> enableOCSPCheck]))
instance Property "EnableOCSPCheck" ServerCertificateConfigProperty where
  type PropertyType "EnableOCSPCheck" ServerCertificateConfigProperty = Value Prelude.Bool
  set newValue ServerCertificateConfigProperty {}
    = ServerCertificateConfigProperty
        {enableOCSPCheck = Prelude.pure newValue, ..}