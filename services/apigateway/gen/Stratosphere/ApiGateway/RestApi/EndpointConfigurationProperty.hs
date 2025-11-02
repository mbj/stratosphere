module Stratosphere.ApiGateway.RestApi.EndpointConfigurationProperty (
        EndpointConfigurationProperty(..), mkEndpointConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html>
    EndpointConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html#cfn-apigateway-restapi-endpointconfiguration-types>
                                   types :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html#cfn-apigateway-restapi-endpointconfiguration-vpcendpointids>
                                   vpcEndpointIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpointConfigurationProperty :: EndpointConfigurationProperty
mkEndpointConfigurationProperty
  = EndpointConfigurationProperty
      {haddock_workaround_ = (), types = Prelude.Nothing,
       vpcEndpointIds = Prelude.Nothing}
instance ToResourceProperties EndpointConfigurationProperty where
  toResourceProperties EndpointConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::RestApi.EndpointConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Types" Prelude.<$> types,
                            (JSON..=) "VpcEndpointIds" Prelude.<$> vpcEndpointIds])}
instance JSON.ToJSON EndpointConfigurationProperty where
  toJSON EndpointConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Types" Prelude.<$> types,
               (JSON..=) "VpcEndpointIds" Prelude.<$> vpcEndpointIds]))
instance Property "Types" EndpointConfigurationProperty where
  type PropertyType "Types" EndpointConfigurationProperty = ValueList Prelude.Text
  set newValue EndpointConfigurationProperty {..}
    = EndpointConfigurationProperty {types = Prelude.pure newValue, ..}
instance Property "VpcEndpointIds" EndpointConfigurationProperty where
  type PropertyType "VpcEndpointIds" EndpointConfigurationProperty = ValueList Prelude.Text
  set newValue EndpointConfigurationProperty {..}
    = EndpointConfigurationProperty
        {vpcEndpointIds = Prelude.pure newValue, ..}