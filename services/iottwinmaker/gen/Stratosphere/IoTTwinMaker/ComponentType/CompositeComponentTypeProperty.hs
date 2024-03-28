module Stratosphere.IoTTwinMaker.ComponentType.CompositeComponentTypeProperty (
        CompositeComponentTypeProperty(..),
        mkCompositeComponentTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CompositeComponentTypeProperty
  = CompositeComponentTypeProperty {componentTypeId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCompositeComponentTypeProperty :: CompositeComponentTypeProperty
mkCompositeComponentTypeProperty
  = CompositeComponentTypeProperty
      {componentTypeId = Prelude.Nothing}
instance ToResourceProperties CompositeComponentTypeProperty where
  toResourceProperties CompositeComponentTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType.CompositeComponentType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentTypeId" Prelude.<$> componentTypeId])}
instance JSON.ToJSON CompositeComponentTypeProperty where
  toJSON CompositeComponentTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentTypeId" Prelude.<$> componentTypeId]))
instance Property "ComponentTypeId" CompositeComponentTypeProperty where
  type PropertyType "ComponentTypeId" CompositeComponentTypeProperty = Value Prelude.Text
  set newValue CompositeComponentTypeProperty {}
    = CompositeComponentTypeProperty
        {componentTypeId = Prelude.pure newValue, ..}