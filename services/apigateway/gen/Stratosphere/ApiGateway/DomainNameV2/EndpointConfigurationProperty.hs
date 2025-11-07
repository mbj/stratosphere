module Stratosphere.ApiGateway.DomainNameV2.EndpointConfigurationProperty (
        EndpointConfigurationProperty(..), mkEndpointConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainnamev2-endpointconfiguration.html>
    EndpointConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainnamev2-endpointconfiguration.html#cfn-apigateway-domainnamev2-endpointconfiguration-ipaddresstype>
                                   ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainnamev2-endpointconfiguration.html#cfn-apigateway-domainnamev2-endpointconfiguration-types>
                                   types :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpointConfigurationProperty :: EndpointConfigurationProperty
mkEndpointConfigurationProperty
  = EndpointConfigurationProperty
      {haddock_workaround_ = (), ipAddressType = Prelude.Nothing,
       types = Prelude.Nothing}
instance ToResourceProperties EndpointConfigurationProperty where
  toResourceProperties EndpointConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::DomainNameV2.EndpointConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                            (JSON..=) "Types" Prelude.<$> types])}
instance JSON.ToJSON EndpointConfigurationProperty where
  toJSON EndpointConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
               (JSON..=) "Types" Prelude.<$> types]))
instance Property "IpAddressType" EndpointConfigurationProperty where
  type PropertyType "IpAddressType" EndpointConfigurationProperty = Value Prelude.Text
  set newValue EndpointConfigurationProperty {..}
    = EndpointConfigurationProperty
        {ipAddressType = Prelude.pure newValue, ..}
instance Property "Types" EndpointConfigurationProperty where
  type PropertyType "Types" EndpointConfigurationProperty = ValueList Prelude.Text
  set newValue EndpointConfigurationProperty {..}
    = EndpointConfigurationProperty {types = Prelude.pure newValue, ..}