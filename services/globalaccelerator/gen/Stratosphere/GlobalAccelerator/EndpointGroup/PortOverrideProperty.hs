module Stratosphere.GlobalAccelerator.EndpointGroup.PortOverrideProperty (
        PortOverrideProperty(..), mkPortOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortOverrideProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-endpointgroup-portoverride.html>
    PortOverrideProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-endpointgroup-portoverride.html#cfn-globalaccelerator-endpointgroup-portoverride-endpointport>
                          endpointPort :: (Value Prelude.Integer),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-endpointgroup-portoverride.html#cfn-globalaccelerator-endpointgroup-portoverride-listenerport>
                          listenerPort :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortOverrideProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> PortOverrideProperty
mkPortOverrideProperty endpointPort listenerPort
  = PortOverrideProperty
      {haddock_workaround_ = (), endpointPort = endpointPort,
       listenerPort = listenerPort}
instance ToResourceProperties PortOverrideProperty where
  toResourceProperties PortOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::GlobalAccelerator::EndpointGroup.PortOverride",
         supportsTags = Prelude.False,
         properties = ["EndpointPort" JSON..= endpointPort,
                       "ListenerPort" JSON..= listenerPort]}
instance JSON.ToJSON PortOverrideProperty where
  toJSON PortOverrideProperty {..}
    = JSON.object
        ["EndpointPort" JSON..= endpointPort,
         "ListenerPort" JSON..= listenerPort]
instance Property "EndpointPort" PortOverrideProperty where
  type PropertyType "EndpointPort" PortOverrideProperty = Value Prelude.Integer
  set newValue PortOverrideProperty {..}
    = PortOverrideProperty {endpointPort = newValue, ..}
instance Property "ListenerPort" PortOverrideProperty where
  type PropertyType "ListenerPort" PortOverrideProperty = Value Prelude.Integer
  set newValue PortOverrideProperty {..}
    = PortOverrideProperty {listenerPort = newValue, ..}