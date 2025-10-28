module Stratosphere.Route53.HealthCheck.HealthCheckTagProperty (
        HealthCheckTagProperty(..), mkHealthCheckTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckTagProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthchecktag.html>
    HealthCheckTagProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthchecktag.html#cfn-route53-healthcheck-healthchecktag-key>
                            key :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthchecktag.html#cfn-route53-healthcheck-healthchecktag-value>
                            value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHealthCheckTagProperty ::
  Value Prelude.Text -> Value Prelude.Text -> HealthCheckTagProperty
mkHealthCheckTagProperty key value
  = HealthCheckTagProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties HealthCheckTagProperty where
  toResourceProperties HealthCheckTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::HealthCheck.HealthCheckTag",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON HealthCheckTagProperty where
  toJSON HealthCheckTagProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" HealthCheckTagProperty where
  type PropertyType "Key" HealthCheckTagProperty = Value Prelude.Text
  set newValue HealthCheckTagProperty {..}
    = HealthCheckTagProperty {key = newValue, ..}
instance Property "Value" HealthCheckTagProperty where
  type PropertyType "Value" HealthCheckTagProperty = Value Prelude.Text
  set newValue HealthCheckTagProperty {..}
    = HealthCheckTagProperty {value = newValue, ..}