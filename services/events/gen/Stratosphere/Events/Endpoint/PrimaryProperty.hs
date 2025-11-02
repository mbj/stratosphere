module Stratosphere.Events.Endpoint.PrimaryProperty (
        PrimaryProperty(..), mkPrimaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrimaryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-endpoint-primary.html>
    PrimaryProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-endpoint-primary.html#cfn-events-endpoint-primary-healthcheck>
                     healthCheck :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrimaryProperty :: Value Prelude.Text -> PrimaryProperty
mkPrimaryProperty healthCheck
  = PrimaryProperty
      {haddock_workaround_ = (), healthCheck = healthCheck}
instance ToResourceProperties PrimaryProperty where
  toResourceProperties PrimaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Endpoint.Primary",
         supportsTags = Prelude.False,
         properties = ["HealthCheck" JSON..= healthCheck]}
instance JSON.ToJSON PrimaryProperty where
  toJSON PrimaryProperty {..}
    = JSON.object ["HealthCheck" JSON..= healthCheck]
instance Property "HealthCheck" PrimaryProperty where
  type PropertyType "HealthCheck" PrimaryProperty = Value Prelude.Text
  set newValue PrimaryProperty {..}
    = PrimaryProperty {healthCheck = newValue, ..}