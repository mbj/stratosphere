module Stratosphere.IoT.DomainConfiguration.TlsConfigProperty (
        TlsConfigProperty(..), mkTlsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TlsConfigProperty
  = TlsConfigProperty {securityPolicy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTlsConfigProperty :: TlsConfigProperty
mkTlsConfigProperty
  = TlsConfigProperty {securityPolicy = Prelude.Nothing}
instance ToResourceProperties TlsConfigProperty where
  toResourceProperties TlsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::DomainConfiguration.TlsConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecurityPolicy" Prelude.<$> securityPolicy])}
instance JSON.ToJSON TlsConfigProperty where
  toJSON TlsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecurityPolicy" Prelude.<$> securityPolicy]))
instance Property "SecurityPolicy" TlsConfigProperty where
  type PropertyType "SecurityPolicy" TlsConfigProperty = Value Prelude.Text
  set newValue TlsConfigProperty {}
    = TlsConfigProperty {securityPolicy = Prelude.pure newValue, ..}