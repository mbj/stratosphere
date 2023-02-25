module Stratosphere.Route53.HealthCheck.AlarmIdentifierProperty (
        AlarmIdentifierProperty(..), mkAlarmIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlarmIdentifierProperty
  = AlarmIdentifierProperty {name :: (Value Prelude.Text),
                             region :: (Value Prelude.Text)}
mkAlarmIdentifierProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AlarmIdentifierProperty
mkAlarmIdentifierProperty name region
  = AlarmIdentifierProperty {name = name, region = region}
instance ToResourceProperties AlarmIdentifierProperty where
  toResourceProperties AlarmIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::HealthCheck.AlarmIdentifier",
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