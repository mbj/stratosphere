module Stratosphere.MediaLive.Channel.OutputLocationRefProperty (
        OutputLocationRefProperty(..), mkOutputLocationRefProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputLocationRefProperty
  = OutputLocationRefProperty {destinationRefId :: (Prelude.Maybe (Value Prelude.Text))}
mkOutputLocationRefProperty :: OutputLocationRefProperty
mkOutputLocationRefProperty
  = OutputLocationRefProperty {destinationRefId = Prelude.Nothing}
instance ToResourceProperties OutputLocationRefProperty where
  toResourceProperties OutputLocationRefProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.OutputLocationRef",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationRefId" Prelude.<$> destinationRefId])}
instance JSON.ToJSON OutputLocationRefProperty where
  toJSON OutputLocationRefProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationRefId" Prelude.<$> destinationRefId]))
instance Property "DestinationRefId" OutputLocationRefProperty where
  type PropertyType "DestinationRefId" OutputLocationRefProperty = Value Prelude.Text
  set newValue OutputLocationRefProperty {}
    = OutputLocationRefProperty
        {destinationRefId = Prelude.pure newValue, ..}