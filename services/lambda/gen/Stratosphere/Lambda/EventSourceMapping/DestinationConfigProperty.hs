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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-destinationconfig.html>
    DestinationConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-destinationconfig.html#cfn-lambda-eventsourcemapping-destinationconfig-onfailure>
                               onFailure :: (Prelude.Maybe OnFailureProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationConfigProperty :: DestinationConfigProperty
mkDestinationConfigProperty
  = DestinationConfigProperty
      {haddock_workaround_ = (), onFailure = Prelude.Nothing}
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
  set newValue DestinationConfigProperty {..}
    = DestinationConfigProperty {onFailure = Prelude.pure newValue, ..}