module Stratosphere.VpcLattice.Listener (
        module Exports, Listener(..), mkListener
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.Listener.DefaultActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Listener
  = Listener {defaultAction :: DefaultActionProperty,
              name :: (Prelude.Maybe (Value Prelude.Text)),
              port :: (Prelude.Maybe (Value Prelude.Integer)),
              protocol :: (Value Prelude.Text),
              serviceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
              tags :: (Prelude.Maybe [Tag])}
mkListener ::
  DefaultActionProperty -> Value Prelude.Text -> Listener
mkListener defaultAction protocol
  = Listener
      {defaultAction = defaultAction, protocol = protocol,
       name = Prelude.Nothing, port = Prelude.Nothing,
       serviceIdentifier = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Listener where
  toResourceProperties Listener {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Listener",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultAction" JSON..= defaultAction,
                            "Protocol" JSON..= protocol]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "ServiceIdentifier" Prelude.<$> serviceIdentifier,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Listener where
  toJSON Listener {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultAction" JSON..= defaultAction,
               "Protocol" JSON..= protocol]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "ServiceIdentifier" Prelude.<$> serviceIdentifier,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DefaultAction" Listener where
  type PropertyType "DefaultAction" Listener = DefaultActionProperty
  set newValue Listener {..}
    = Listener {defaultAction = newValue, ..}
instance Property "Name" Listener where
  type PropertyType "Name" Listener = Value Prelude.Text
  set newValue Listener {..}
    = Listener {name = Prelude.pure newValue, ..}
instance Property "Port" Listener where
  type PropertyType "Port" Listener = Value Prelude.Integer
  set newValue Listener {..}
    = Listener {port = Prelude.pure newValue, ..}
instance Property "Protocol" Listener where
  type PropertyType "Protocol" Listener = Value Prelude.Text
  set newValue Listener {..} = Listener {protocol = newValue, ..}
instance Property "ServiceIdentifier" Listener where
  type PropertyType "ServiceIdentifier" Listener = Value Prelude.Text
  set newValue Listener {..}
    = Listener {serviceIdentifier = Prelude.pure newValue, ..}
instance Property "Tags" Listener where
  type PropertyType "Tags" Listener = [Tag]
  set newValue Listener {..}
    = Listener {tags = Prelude.pure newValue, ..}