module Stratosphere.ApiGateway.RestApi.EndpointConfigurationProperty (
        EndpointConfigurationProperty(..), mkEndpointConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointConfigurationProperty
  = EndpointConfigurationProperty {types :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   vpcEndpointIds :: (Prelude.Maybe (ValueList Prelude.Text))}
mkEndpointConfigurationProperty :: EndpointConfigurationProperty
mkEndpointConfigurationProperty
  = EndpointConfigurationProperty
      {types = Prelude.Nothing, vpcEndpointIds = Prelude.Nothing}
instance ToResourceProperties EndpointConfigurationProperty where
  toResourceProperties EndpointConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::RestApi.EndpointConfiguration",
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