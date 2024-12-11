module Stratosphere.MediaConnect.FlowOutput.DestinationConfigurationProperty (
        module Exports, DestinationConfigurationProperty(..),
        mkDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.FlowOutput.InterfaceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DestinationConfigurationProperty
  = DestinationConfigurationProperty {destinationIp :: (Value Prelude.Text),
                                      destinationPort :: (Value Prelude.Integer),
                                      interface :: InterfaceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> InterfaceProperty -> DestinationConfigurationProperty
mkDestinationConfigurationProperty
  destinationIp
  destinationPort
  interface
  = DestinationConfigurationProperty
      {destinationIp = destinationIp, destinationPort = destinationPort,
       interface = interface}
instance ToResourceProperties DestinationConfigurationProperty where
  toResourceProperties DestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::FlowOutput.DestinationConfiguration",
         supportsTags = Prelude.False,
         properties = ["DestinationIp" JSON..= destinationIp,
                       "DestinationPort" JSON..= destinationPort,
                       "Interface" JSON..= interface]}
instance JSON.ToJSON DestinationConfigurationProperty where
  toJSON DestinationConfigurationProperty {..}
    = JSON.object
        ["DestinationIp" JSON..= destinationIp,
         "DestinationPort" JSON..= destinationPort,
         "Interface" JSON..= interface]
instance Property "DestinationIp" DestinationConfigurationProperty where
  type PropertyType "DestinationIp" DestinationConfigurationProperty = Value Prelude.Text
  set newValue DestinationConfigurationProperty {..}
    = DestinationConfigurationProperty {destinationIp = newValue, ..}
instance Property "DestinationPort" DestinationConfigurationProperty where
  type PropertyType "DestinationPort" DestinationConfigurationProperty = Value Prelude.Integer
  set newValue DestinationConfigurationProperty {..}
    = DestinationConfigurationProperty {destinationPort = newValue, ..}
instance Property "Interface" DestinationConfigurationProperty where
  type PropertyType "Interface" DestinationConfigurationProperty = InterfaceProperty
  set newValue DestinationConfigurationProperty {..}
    = DestinationConfigurationProperty {interface = newValue, ..}