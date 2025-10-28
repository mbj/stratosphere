module Stratosphere.Lambda.EventInvokeConfig.OnSuccessProperty (
        OnSuccessProperty(..), mkOnSuccessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnSuccessProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-onsuccess.html>
    OnSuccessProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-onsuccess.html#cfn-lambda-eventinvokeconfig-onsuccess-destination>
                       destination :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnSuccessProperty :: Value Prelude.Text -> OnSuccessProperty
mkOnSuccessProperty destination
  = OnSuccessProperty
      {haddock_workaround_ = (), destination = destination}
instance ToResourceProperties OnSuccessProperty where
  toResourceProperties OnSuccessProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventInvokeConfig.OnSuccess",
         supportsTags = Prelude.False,
         properties = ["Destination" JSON..= destination]}
instance JSON.ToJSON OnSuccessProperty where
  toJSON OnSuccessProperty {..}
    = JSON.object ["Destination" JSON..= destination]
instance Property "Destination" OnSuccessProperty where
  type PropertyType "Destination" OnSuccessProperty = Value Prelude.Text
  set newValue OnSuccessProperty {..}
    = OnSuccessProperty {destination = newValue, ..}