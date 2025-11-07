module Stratosphere.SES.MailManagerIngressPoint.PrivateNetworkConfigurationProperty (
        PrivateNetworkConfigurationProperty(..),
        mkPrivateNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateNetworkConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-privatenetworkconfiguration.html>
    PrivateNetworkConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-privatenetworkconfiguration.html#cfn-ses-mailmanageringresspoint-privatenetworkconfiguration-vpcendpointid>
                                         vpcEndpointId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateNetworkConfigurationProperty ::
  Value Prelude.Text -> PrivateNetworkConfigurationProperty
mkPrivateNetworkConfigurationProperty vpcEndpointId
  = PrivateNetworkConfigurationProperty
      {haddock_workaround_ = (), vpcEndpointId = vpcEndpointId}
instance ToResourceProperties PrivateNetworkConfigurationProperty where
  toResourceProperties PrivateNetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerIngressPoint.PrivateNetworkConfiguration",
         supportsTags = Prelude.False,
         properties = ["VpcEndpointId" JSON..= vpcEndpointId]}
instance JSON.ToJSON PrivateNetworkConfigurationProperty where
  toJSON PrivateNetworkConfigurationProperty {..}
    = JSON.object ["VpcEndpointId" JSON..= vpcEndpointId]
instance Property "VpcEndpointId" PrivateNetworkConfigurationProperty where
  type PropertyType "VpcEndpointId" PrivateNetworkConfigurationProperty = Value Prelude.Text
  set newValue PrivateNetworkConfigurationProperty {..}
    = PrivateNetworkConfigurationProperty
        {vpcEndpointId = newValue, ..}