module Stratosphere.GlobalAccelerator.CrossAccountAttachment.ResourceProperty (
        ResourceProperty(..), mkResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceProperty
  = ResourceProperty {cidr :: (Prelude.Maybe (Value Prelude.Text)),
                      endpointId :: (Prelude.Maybe (Value Prelude.Text)),
                      region :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceProperty :: ResourceProperty
mkResourceProperty
  = ResourceProperty
      {cidr = Prelude.Nothing, endpointId = Prelude.Nothing,
       region = Prelude.Nothing}
instance ToResourceProperties ResourceProperty where
  toResourceProperties ResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::GlobalAccelerator::CrossAccountAttachment.Resource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cidr" Prelude.<$> cidr,
                            (JSON..=) "EndpointId" Prelude.<$> endpointId,
                            (JSON..=) "Region" Prelude.<$> region])}
instance JSON.ToJSON ResourceProperty where
  toJSON ResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cidr" Prelude.<$> cidr,
               (JSON..=) "EndpointId" Prelude.<$> endpointId,
               (JSON..=) "Region" Prelude.<$> region]))
instance Property "Cidr" ResourceProperty where
  type PropertyType "Cidr" ResourceProperty = Value Prelude.Text
  set newValue ResourceProperty {..}
    = ResourceProperty {cidr = Prelude.pure newValue, ..}
instance Property "EndpointId" ResourceProperty where
  type PropertyType "EndpointId" ResourceProperty = Value Prelude.Text
  set newValue ResourceProperty {..}
    = ResourceProperty {endpointId = Prelude.pure newValue, ..}
instance Property "Region" ResourceProperty where
  type PropertyType "Region" ResourceProperty = Value Prelude.Text
  set newValue ResourceProperty {..}
    = ResourceProperty {region = Prelude.pure newValue, ..}