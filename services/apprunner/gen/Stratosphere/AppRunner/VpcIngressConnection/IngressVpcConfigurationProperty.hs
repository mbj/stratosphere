module Stratosphere.AppRunner.VpcIngressConnection.IngressVpcConfigurationProperty (
        IngressVpcConfigurationProperty(..),
        mkIngressVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressVpcConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-vpcingressconnection-ingressvpcconfiguration.html>
    IngressVpcConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-vpcingressconnection-ingressvpcconfiguration.html#cfn-apprunner-vpcingressconnection-ingressvpcconfiguration-vpcendpointid>
                                     vpcEndpointId :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-vpcingressconnection-ingressvpcconfiguration.html#cfn-apprunner-vpcingressconnection-ingressvpcconfiguration-vpcid>
                                     vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressVpcConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> IngressVpcConfigurationProperty
mkIngressVpcConfigurationProperty vpcEndpointId vpcId
  = IngressVpcConfigurationProperty
      {haddock_workaround_ = (), vpcEndpointId = vpcEndpointId,
       vpcId = vpcId}
instance ToResourceProperties IngressVpcConfigurationProperty where
  toResourceProperties IngressVpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::VpcIngressConnection.IngressVpcConfiguration",
         supportsTags = Prelude.False,
         properties = ["VpcEndpointId" JSON..= vpcEndpointId,
                       "VpcId" JSON..= vpcId]}
instance JSON.ToJSON IngressVpcConfigurationProperty where
  toJSON IngressVpcConfigurationProperty {..}
    = JSON.object
        ["VpcEndpointId" JSON..= vpcEndpointId, "VpcId" JSON..= vpcId]
instance Property "VpcEndpointId" IngressVpcConfigurationProperty where
  type PropertyType "VpcEndpointId" IngressVpcConfigurationProperty = Value Prelude.Text
  set newValue IngressVpcConfigurationProperty {..}
    = IngressVpcConfigurationProperty {vpcEndpointId = newValue, ..}
instance Property "VpcId" IngressVpcConfigurationProperty where
  type PropertyType "VpcId" IngressVpcConfigurationProperty = Value Prelude.Text
  set newValue IngressVpcConfigurationProperty {..}
    = IngressVpcConfigurationProperty {vpcId = newValue, ..}