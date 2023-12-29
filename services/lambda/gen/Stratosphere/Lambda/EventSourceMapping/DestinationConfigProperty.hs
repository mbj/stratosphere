module Stratosphere.Lambda.EventSourceMapping.DestinationConfigProperty (
        module Exports, DestinationConfigProperty(..),
        mkDestinationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.OnFailureProperty as Exports
import Stratosphere.ResourceProperties
data DestinationConfigProperty
  = DestinationConfigProperty {onFailure :: (Prelude.Maybe OnFailureProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationConfigProperty :: DestinationConfigProperty
mkDestinationConfigProperty
  = DestinationConfigProperty {onFailure = Prelude.Nothing}
instance ToResourceProperties DestinationConfigProperty where
  toResourceProperties DestinationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.DestinationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "OnFailure" Prelude.<$> onFailure])}
instance JSON.ToJSON DestinationConfigProperty where
  toJSON DestinationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "OnFailure" Prelude.<$> onFailure]))
instance Property "OnFailure" DestinationConfigProperty where
  type PropertyType "OnFailure" DestinationConfigProperty = OnFailureProperty
  set newValue DestinationConfigProperty {}
    = DestinationConfigProperty {onFailure = Prelude.pure newValue, ..}