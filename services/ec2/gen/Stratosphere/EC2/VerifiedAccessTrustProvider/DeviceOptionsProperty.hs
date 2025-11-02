module Stratosphere.EC2.VerifiedAccessTrustProvider.DeviceOptionsProperty (
        DeviceOptionsProperty(..), mkDeviceOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-deviceoptions.html>
    DeviceOptionsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-deviceoptions.html#cfn-ec2-verifiedaccesstrustprovider-deviceoptions-publicsigningkeyurl>
                           publicSigningKeyUrl :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-deviceoptions.html#cfn-ec2-verifiedaccesstrustprovider-deviceoptions-tenantid>
                           tenantId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeviceOptionsProperty :: DeviceOptionsProperty
mkDeviceOptionsProperty
  = DeviceOptionsProperty
      {haddock_workaround_ = (), publicSigningKeyUrl = Prelude.Nothing,
       tenantId = Prelude.Nothing}
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