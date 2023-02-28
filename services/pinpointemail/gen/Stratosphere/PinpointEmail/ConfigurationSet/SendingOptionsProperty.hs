module Stratosphere.PinpointEmail.ConfigurationSet.SendingOptionsProperty (
        SendingOptionsProperty(..), mkSendingOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SendingOptionsProperty
  = SendingOptionsProperty {sendingEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkSendingOptionsProperty :: SendingOptionsProperty
mkSendingOptionsProperty
  = SendingOptionsProperty {sendingEnabled = Prelude.Nothing}
instance ToResourceProperties SendingOptionsProperty where
  toResourceProperties SendingOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::ConfigurationSet.SendingOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SendingEnabled" Prelude.<$> sendingEnabled])}
instance JSON.ToJSON SendingOptionsProperty where
  toJSON SendingOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SendingEnabled" Prelude.<$> sendingEnabled]))
instance Property "SendingEnabled" SendingOptionsProperty where
  type PropertyType "SendingEnabled" SendingOptionsProperty = Value Prelude.Bool
  set newValue SendingOptionsProperty {}
    = SendingOptionsProperty
        {sendingEnabled = Prelude.pure newValue, ..}