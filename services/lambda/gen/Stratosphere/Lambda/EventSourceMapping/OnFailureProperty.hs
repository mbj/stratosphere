module Stratosphere.Lambda.EventSourceMapping.OnFailureProperty (
        OnFailureProperty(..), mkOnFailureProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnFailureProperty
  = OnFailureProperty {destination :: (Prelude.Maybe (Value Prelude.Text))}
mkOnFailureProperty :: OnFailureProperty
mkOnFailureProperty
  = OnFailureProperty {destination = Prelude.Nothing}
instance ToResourceProperties OnFailureProperty where
  toResourceProperties OnFailureProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.OnFailure",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination])}
instance JSON.ToJSON OnFailureProperty where
  toJSON OnFailureProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination]))
instance Property "Destination" OnFailureProperty where
  type PropertyType "Destination" OnFailureProperty = Value Prelude.Text
  set newValue OnFailureProperty {}
    = OnFailureProperty {destination = Prelude.pure newValue, ..}