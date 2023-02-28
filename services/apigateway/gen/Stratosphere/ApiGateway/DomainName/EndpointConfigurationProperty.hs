module Stratosphere.ApiGateway.DomainName.EndpointConfigurationProperty (
        EndpointConfigurationProperty(..), mkEndpointConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointConfigurationProperty
  = EndpointConfigurationProperty {types :: (Prelude.Maybe (ValueList Prelude.Text))}
mkEndpointConfigurationProperty :: EndpointConfigurationProperty
mkEndpointConfigurationProperty
  = EndpointConfigurationProperty {types = Prelude.Nothing}
instance ToResourceProperties EndpointConfigurationProperty where
  toResourceProperties EndpointConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::DomainName.EndpointConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types])}
instance JSON.ToJSON EndpointConfigurationProperty where
  toJSON EndpointConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types]))
instance Property "Types" EndpointConfigurationProperty where
  type PropertyType "Types" EndpointConfigurationProperty = ValueList Prelude.Text
  set newValue EndpointConfigurationProperty {}
    = EndpointConfigurationProperty {types = Prelude.pure newValue, ..}