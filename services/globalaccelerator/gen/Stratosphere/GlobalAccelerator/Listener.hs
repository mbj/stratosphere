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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-listener.html>
    Listener {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-listener.html#cfn-globalaccelerator-listener-acceleratorarn>
              acceleratorArn :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-listener.html#cfn-globalaccelerator-listener-clientaffinity>
              clientAffinity :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-listener.html#cfn-globalaccelerator-listener-portranges>
              portRanges :: [PortRangeProperty],
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-listener.html#cfn-globalaccelerator-listener-protocol>
              protocol :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListener ::
  Value Prelude.Text
  -> [PortRangeProperty] -> Value Prelude.Text -> Listener
mkListener acceleratorArn portRanges protocol
  = Listener
      {haddock_workaround_ = (), acceleratorArn = acceleratorArn,
       portRanges = portRanges, protocol = protocol,
       clientAffinity = Prelude.Nothing}
instance ToResourceProperties Listener where
  toResourceProperties Listener {..}
    = ResourceProperties
        {awsType = "AWS::GlobalAccelerator::Listener",
         supportsTags = Prelude.False,
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