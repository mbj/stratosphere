module Stratosphere.GlobalAccelerator.EndpointGroup.EndpointConfigurationProperty (
        EndpointConfigurationProperty(..), mkEndpointConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointConfigurationProperty
  = EndpointConfigurationProperty {clientIPPreservationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                   endpointId :: (Value Prelude.Text),
                                   weight :: (Prelude.Maybe (Value Prelude.Integer))}
mkEndpointConfigurationProperty ::
  Value Prelude.Text -> EndpointConfigurationProperty
mkEndpointConfigurationProperty endpointId
  = EndpointConfigurationProperty
      {endpointId = endpointId,
       clientIPPreservationEnabled = Prelude.Nothing,
       weight = Prelude.Nothing}
instance ToResourceProperties EndpointConfigurationProperty where
  toResourceProperties EndpointConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GlobalAccelerator::EndpointGroup.EndpointConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointId" JSON..= endpointId]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientIPPreservationEnabled"
                                 Prelude.<$> clientIPPreservationEnabled,
                               (JSON..=) "Weight" Prelude.<$> weight]))}
instance JSON.ToJSON EndpointConfigurationProperty where
  toJSON EndpointConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointId" JSON..= endpointId]
              (Prelude.catMaybes
                 [(JSON..=) "ClientIPPreservationEnabled"
                    Prelude.<$> clientIPPreservationEnabled,
                  (JSON..=) "Weight" Prelude.<$> weight])))
instance Property "ClientIPPreservationEnabled" EndpointConfigurationProperty where
  type PropertyType "ClientIPPreservationEnabled" EndpointConfigurationProperty = Value Prelude.Bool
  set newValue EndpointConfigurationProperty {..}
    = EndpointConfigurationProperty
        {clientIPPreservationEnabled = Prelude.pure newValue, ..}
instance Property "EndpointId" EndpointConfigurationProperty where
  type PropertyType "EndpointId" EndpointConfigurationProperty = Value Prelude.Text
  set newValue EndpointConfigurationProperty {..}
    = EndpointConfigurationProperty {endpointId = newValue, ..}
instance Property "Weight" EndpointConfigurationProperty where
  type PropertyType "Weight" EndpointConfigurationProperty = Value Prelude.Integer
  set newValue EndpointConfigurationProperty {..}
    = EndpointConfigurationProperty
        {weight = Prelude.pure newValue, ..}