module Stratosphere.MediaConnect.Flow.InputConfigurationProperty (
        module Exports, InputConfigurationProperty(..),
        mkInputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.InterfaceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputConfigurationProperty
  = InputConfigurationProperty {inputPort :: (Value Prelude.Integer),
                                interface :: InterfaceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputConfigurationProperty ::
  Value Prelude.Integer
  -> InterfaceProperty -> InputConfigurationProperty
mkInputConfigurationProperty inputPort interface
  = InputConfigurationProperty
      {inputPort = inputPort, interface = interface}
instance ToResourceProperties InputConfigurationProperty where
  toResourceProperties InputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.InputConfiguration",
         supportsTags = Prelude.False,
         properties = ["InputPort" JSON..= inputPort,
                       "Interface" JSON..= interface]}
instance JSON.ToJSON InputConfigurationProperty where
  toJSON InputConfigurationProperty {..}
    = JSON.object
        ["InputPort" JSON..= inputPort, "Interface" JSON..= interface]
instance Property "InputPort" InputConfigurationProperty where
  type PropertyType "InputPort" InputConfigurationProperty = Value Prelude.Integer
  set newValue InputConfigurationProperty {..}
    = InputConfigurationProperty {inputPort = newValue, ..}
instance Property "Interface" InputConfigurationProperty where
  type PropertyType "Interface" InputConfigurationProperty = InterfaceProperty
  set newValue InputConfigurationProperty {..}
    = InputConfigurationProperty {interface = newValue, ..}