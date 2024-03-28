module Stratosphere.GameLift.GameSessionQueue.GameSessionQueueDestinationProperty (
        GameSessionQueueDestinationProperty(..),
        mkGameSessionQueueDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GameSessionQueueDestinationProperty
  = GameSessionQueueDestinationProperty {destinationArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGameSessionQueueDestinationProperty ::
  GameSessionQueueDestinationProperty
mkGameSessionQueueDestinationProperty
  = GameSessionQueueDestinationProperty
      {destinationArn = Prelude.Nothing}
instance ToResourceProperties GameSessionQueueDestinationProperty where
  toResourceProperties GameSessionQueueDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameSessionQueue.GameSessionQueueDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationArn" Prelude.<$> destinationArn])}
instance JSON.ToJSON GameSessionQueueDestinationProperty where
  toJSON GameSessionQueueDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationArn" Prelude.<$> destinationArn]))
instance Property "DestinationArn" GameSessionQueueDestinationProperty where
  type PropertyType "DestinationArn" GameSessionQueueDestinationProperty = Value Prelude.Text
  set newValue GameSessionQueueDestinationProperty {}
    = GameSessionQueueDestinationProperty
        {destinationArn = Prelude.pure newValue, ..}