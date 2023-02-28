module Stratosphere.GroundStation.DataflowEndpointGroup.EndpointDetailsProperty (
        module Exports, EndpointDetailsProperty(..),
        mkEndpointDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.DataflowEndpointGroup.DataflowEndpointProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.DataflowEndpointGroup.SecurityDetailsProperty as Exports
import Stratosphere.ResourceProperties
data EndpointDetailsProperty
  = EndpointDetailsProperty {endpoint :: (Prelude.Maybe DataflowEndpointProperty),
                             securityDetails :: (Prelude.Maybe SecurityDetailsProperty)}
mkEndpointDetailsProperty :: EndpointDetailsProperty
mkEndpointDetailsProperty
  = EndpointDetailsProperty
      {endpoint = Prelude.Nothing, securityDetails = Prelude.Nothing}
instance ToResourceProperties EndpointDetailsProperty where
  toResourceProperties EndpointDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::DataflowEndpointGroup.EndpointDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Endpoint" Prelude.<$> endpoint,
                            (JSON..=) "SecurityDetails" Prelude.<$> securityDetails])}
instance JSON.ToJSON EndpointDetailsProperty where
  toJSON EndpointDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Endpoint" Prelude.<$> endpoint,
               (JSON..=) "SecurityDetails" Prelude.<$> securityDetails]))
instance Property "Endpoint" EndpointDetailsProperty where
  type PropertyType "Endpoint" EndpointDetailsProperty = DataflowEndpointProperty
  set newValue EndpointDetailsProperty {..}
    = EndpointDetailsProperty {endpoint = Prelude.pure newValue, ..}
instance Property "SecurityDetails" EndpointDetailsProperty where
  type PropertyType "SecurityDetails" EndpointDetailsProperty = SecurityDetailsProperty
  set newValue EndpointDetailsProperty {..}
    = EndpointDetailsProperty
        {securityDetails = Prelude.pure newValue, ..}