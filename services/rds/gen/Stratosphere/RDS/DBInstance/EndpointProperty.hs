module Stratosphere.RDS.DBInstance.EndpointProperty (
        EndpointProperty(..), mkEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointProperty
  = EndpointProperty {address :: (Prelude.Maybe (Value Prelude.Text)),
                      hostedZoneId :: (Prelude.Maybe (Value Prelude.Text)),
                      port :: (Prelude.Maybe (Value Prelude.Text))}
mkEndpointProperty :: EndpointProperty
mkEndpointProperty
  = EndpointProperty
      {address = Prelude.Nothing, hostedZoneId = Prelude.Nothing,
       port = Prelude.Nothing}
instance ToResourceProperties EndpointProperty where
  toResourceProperties EndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBInstance.Endpoint",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Address" Prelude.<$> address,
                            (JSON..=) "HostedZoneId" Prelude.<$> hostedZoneId,
                            (JSON..=) "Port" Prelude.<$> port])}
instance JSON.ToJSON EndpointProperty where
  toJSON EndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Address" Prelude.<$> address,
               (JSON..=) "HostedZoneId" Prelude.<$> hostedZoneId,
               (JSON..=) "Port" Prelude.<$> port]))
instance Property "Address" EndpointProperty where
  type PropertyType "Address" EndpointProperty = Value Prelude.Text
  set newValue EndpointProperty {..}
    = EndpointProperty {address = Prelude.pure newValue, ..}
instance Property "HostedZoneId" EndpointProperty where
  type PropertyType "HostedZoneId" EndpointProperty = Value Prelude.Text
  set newValue EndpointProperty {..}
    = EndpointProperty {hostedZoneId = Prelude.pure newValue, ..}
instance Property "Port" EndpointProperty where
  type PropertyType "Port" EndpointProperty = Value Prelude.Text
  set newValue EndpointProperty {..}
    = EndpointProperty {port = Prelude.pure newValue, ..}