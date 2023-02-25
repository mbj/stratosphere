module Stratosphere.GlobalAccelerator.Listener (
        module Exports, Listener(..), mkListener
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GlobalAccelerator.Listener.PortRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Listener
  = Listener {acceleratorArn :: (Value Prelude.Text),
              clientAffinity :: (Prelude.Maybe (Value Prelude.Text)),
              portRanges :: [PortRangeProperty],
              protocol :: (Value Prelude.Text)}
mkListener ::
  Value Prelude.Text
  -> [PortRangeProperty] -> Value Prelude.Text -> Listener
mkListener acceleratorArn portRanges protocol
  = Listener
      {acceleratorArn = acceleratorArn, portRanges = portRanges,
       protocol = protocol, clientAffinity = Prelude.Nothing}
instance ToResourceProperties Listener where
  toResourceProperties Listener {..}
    = ResourceProperties
        {awsType = "AWS::GlobalAccelerator::Listener",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AcceleratorArn" JSON..= acceleratorArn,
                            "PortRanges" JSON..= portRanges, "Protocol" JSON..= protocol]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientAffinity" Prelude.<$> clientAffinity]))}
instance JSON.ToJSON Listener where
  toJSON Listener {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AcceleratorArn" JSON..= acceleratorArn,
               "PortRanges" JSON..= portRanges, "Protocol" JSON..= protocol]
              (Prelude.catMaybes
                 [(JSON..=) "ClientAffinity" Prelude.<$> clientAffinity])))
instance Property "AcceleratorArn" Listener where
  type PropertyType "AcceleratorArn" Listener = Value Prelude.Text
  set newValue Listener {..}
    = Listener {acceleratorArn = newValue, ..}
instance Property "ClientAffinity" Listener where
  type PropertyType "ClientAffinity" Listener = Value Prelude.Text
  set newValue Listener {..}
    = Listener {clientAffinity = Prelude.pure newValue, ..}
instance Property "PortRanges" Listener where
  type PropertyType "PortRanges" Listener = [PortRangeProperty]
  set newValue Listener {..} = Listener {portRanges = newValue, ..}
instance Property "Protocol" Listener where
  type PropertyType "Protocol" Listener = Value Prelude.Text
  set newValue Listener {..} = Listener {protocol = newValue, ..}