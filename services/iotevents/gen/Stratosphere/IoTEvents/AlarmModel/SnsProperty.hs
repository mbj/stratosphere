module Stratosphere.IoTEvents.AlarmModel.SnsProperty (
        module Exports, SnsProperty(..), mkSnsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.PayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnsProperty
  = SnsProperty {payload :: (Prelude.Maybe PayloadProperty),
                 targetArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnsProperty :: Value Prelude.Text -> SnsProperty
mkSnsProperty targetArn
  = SnsProperty {targetArn = targetArn, payload = Prelude.Nothing}
instance ToResourceProperties SnsProperty where
  toResourceProperties SnsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.Sns",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetArn" JSON..= targetArn]
                           (Prelude.catMaybes [(JSON..=) "Payload" Prelude.<$> payload]))}
instance JSON.ToJSON SnsProperty where
  toJSON SnsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetArn" JSON..= targetArn]
              (Prelude.catMaybes [(JSON..=) "Payload" Prelude.<$> payload])))
instance Property "Payload" SnsProperty where
  type PropertyType "Payload" SnsProperty = PayloadProperty
  set newValue SnsProperty {..}
    = SnsProperty {payload = Prelude.pure newValue, ..}
instance Property "TargetArn" SnsProperty where
  type PropertyType "TargetArn" SnsProperty = Value Prelude.Text
  set newValue SnsProperty {..}
    = SnsProperty {targetArn = newValue, ..}