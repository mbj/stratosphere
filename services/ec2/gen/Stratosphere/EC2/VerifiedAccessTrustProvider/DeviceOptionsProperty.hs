module Stratosphere.EC2.VerifiedAccessTrustProvider.DeviceOptionsProperty (
        DeviceOptionsProperty(..), mkDeviceOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceOptionsProperty
  = DeviceOptionsProperty {publicSigningKeyUrl :: (Prelude.Maybe (Value Prelude.Text)),
                           tenantId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeviceOptionsProperty :: DeviceOptionsProperty
mkDeviceOptionsProperty
  = DeviceOptionsProperty
      {publicSigningKeyUrl = Prelude.Nothing, tenantId = Prelude.Nothing}
instance ToResourceProperties DeviceOptionsProperty where
  toResourceProperties DeviceOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessTrustProvider.DeviceOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PublicSigningKeyUrl" Prelude.<$> publicSigningKeyUrl,
                            (JSON..=) "TenantId" Prelude.<$> tenantId])}
instance JSON.ToJSON DeviceOptionsProperty where
  toJSON DeviceOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PublicSigningKeyUrl" Prelude.<$> publicSigningKeyUrl,
               (JSON..=) "TenantId" Prelude.<$> tenantId]))
instance Property "PublicSigningKeyUrl" DeviceOptionsProperty where
  type PropertyType "PublicSigningKeyUrl" DeviceOptionsProperty = Value Prelude.Text
  set newValue DeviceOptionsProperty {..}
    = DeviceOptionsProperty
        {publicSigningKeyUrl = Prelude.pure newValue, ..}
instance Property "TenantId" DeviceOptionsProperty where
  type PropertyType "TenantId" DeviceOptionsProperty = Value Prelude.Text
  set newValue DeviceOptionsProperty {..}
    = DeviceOptionsProperty {tenantId = Prelude.pure newValue, ..}