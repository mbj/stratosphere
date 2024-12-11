module Stratosphere.AutoScaling.AutoScalingGroup.TrafficSourceIdentifierProperty (
        TrafficSourceIdentifierProperty(..),
        mkTrafficSourceIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrafficSourceIdentifierProperty
  = TrafficSourceIdentifierProperty {identifier :: (Value Prelude.Text),
                                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrafficSourceIdentifierProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TrafficSourceIdentifierProperty
mkTrafficSourceIdentifierProperty identifier type'
  = TrafficSourceIdentifierProperty
      {identifier = identifier, type' = type'}
instance ToResourceProperties TrafficSourceIdentifierProperty where
  toResourceProperties TrafficSourceIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.TrafficSourceIdentifier",
         supportsTags = Prelude.False,
         properties = ["Identifier" JSON..= identifier,
                       "Type" JSON..= type']}
instance JSON.ToJSON TrafficSourceIdentifierProperty where
  toJSON TrafficSourceIdentifierProperty {..}
    = JSON.object
        ["Identifier" JSON..= identifier, "Type" JSON..= type']
instance Property "Identifier" TrafficSourceIdentifierProperty where
  type PropertyType "Identifier" TrafficSourceIdentifierProperty = Value Prelude.Text
  set newValue TrafficSourceIdentifierProperty {..}
    = TrafficSourceIdentifierProperty {identifier = newValue, ..}
instance Property "Type" TrafficSourceIdentifierProperty where
  type PropertyType "Type" TrafficSourceIdentifierProperty = Value Prelude.Text
  set newValue TrafficSourceIdentifierProperty {..}
    = TrafficSourceIdentifierProperty {type' = newValue, ..}