module Stratosphere.Events.Endpoint.SecondaryProperty (
        SecondaryProperty(..), mkSecondaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecondaryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-endpoint-secondary.html>
    SecondaryProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-endpoint-secondary.html#cfn-events-endpoint-secondary-route>
                       route :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecondaryProperty :: Value Prelude.Text -> SecondaryProperty
mkSecondaryProperty route
  = SecondaryProperty {haddock_workaround_ = (), route = route}
instance ToResourceProperties SecondaryProperty where
  toResourceProperties SecondaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Endpoint.Secondary",
         supportsTags = Prelude.False, properties = ["Route" JSON..= route]}
instance JSON.ToJSON SecondaryProperty where
  toJSON SecondaryProperty {..} = JSON.object ["Route" JSON..= route]
instance Property "Route" SecondaryProperty where
  type PropertyType "Route" SecondaryProperty = Value Prelude.Text
  set newValue SecondaryProperty {..}
    = SecondaryProperty {route = newValue, ..}