module Stratosphere.GameLift.GameSessionQueue.DestinationProperty (
        DestinationProperty(..), mkDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DestinationProperty
  = DestinationProperty {destinationArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationProperty :: DestinationProperty
mkDestinationProperty
  = DestinationProperty {destinationArn = Prelude.Nothing}
instance ToResourceProperties DestinationProperty where
  toResourceProperties DestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameSessionQueue.Destination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationArn" Prelude.<$> destinationArn])}
instance JSON.ToJSON DestinationProperty where
  toJSON DestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationArn" Prelude.<$> destinationArn]))
instance Property "DestinationArn" DestinationProperty where
  type PropertyType "DestinationArn" DestinationProperty = Value Prelude.Text
  set newValue DestinationProperty {}
    = DestinationProperty {destinationArn = Prelude.pure newValue, ..}