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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-trafficsourceidentifier.html>
    TrafficSourceIdentifierProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-trafficsourceidentifier.html#cfn-autoscaling-autoscalinggroup-trafficsourceidentifier-identifier>
                                     identifier :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-trafficsourceidentifier.html#cfn-autoscaling-autoscalinggroup-trafficsourceidentifier-type>
                                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrafficSourceIdentifierProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TrafficSourceIdentifierProperty
mkTrafficSourceIdentifierProperty identifier type'
  = TrafficSourceIdentifierProperty
      {haddock_workaround_ = (), identifier = identifier, type' = type'}
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