module Stratosphere.Lambda.EventSourceMapping.OnFailureProperty (
        OnFailureProperty(..), mkOnFailureProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnFailureProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-onfailure.html>
    OnFailureProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-onfailure.html#cfn-lambda-eventsourcemapping-onfailure-destination>
                       destination :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnFailureProperty :: OnFailureProperty
mkOnFailureProperty
  = OnFailureProperty
      {haddock_workaround_ = (), destination = Prelude.Nothing}
instance ToResourceProperties OnFailureProperty where
  toResourceProperties OnFailureProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.OnFailure",
         supportsTags = Prelude.False,
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
  set newValue OnFailureProperty {..}
    = OnFailureProperty {destination = Prelude.pure newValue, ..}