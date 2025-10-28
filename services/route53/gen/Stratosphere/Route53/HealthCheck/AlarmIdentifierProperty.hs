module Stratosphere.Route53.HealthCheck.AlarmIdentifierProperty (
        AlarmIdentifierProperty(..), mkAlarmIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlarmIdentifierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html>
    AlarmIdentifierProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html#cfn-route53-healthcheck-alarmidentifier-name>
                             name :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html#cfn-route53-healthcheck-alarmidentifier-region>
                             region :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlarmIdentifierProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AlarmIdentifierProperty
mkAlarmIdentifierProperty name region
  = AlarmIdentifierProperty
      {haddock_workaround_ = (), name = name, region = region}
instance ToResourceProperties AlarmIdentifierProperty where
  toResourceProperties AlarmIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::HealthCheck.AlarmIdentifier",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Region" JSON..= region]}
instance JSON.ToJSON AlarmIdentifierProperty where
  toJSON AlarmIdentifierProperty {..}
    = JSON.object ["Name" JSON..= name, "Region" JSON..= region]
instance Property "Name" AlarmIdentifierProperty where
  type PropertyType "Name" AlarmIdentifierProperty = Value Prelude.Text
  set newValue AlarmIdentifierProperty {..}
    = AlarmIdentifierProperty {name = newValue, ..}
instance Property "Region" AlarmIdentifierProperty where
  type PropertyType "Region" AlarmIdentifierProperty = Value Prelude.Text
  set newValue AlarmIdentifierProperty {..}
    = AlarmIdentifierProperty {region = newValue, ..}