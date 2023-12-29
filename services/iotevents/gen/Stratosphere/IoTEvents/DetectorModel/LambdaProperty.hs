module Stratosphere.IoTEvents.DetectorModel.LambdaProperty (
        module Exports, LambdaProperty(..), mkLambdaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.PayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaProperty
  = LambdaProperty {functionArn :: (Value Prelude.Text),
                    payload :: (Prelude.Maybe PayloadProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaProperty :: Value Prelude.Text -> LambdaProperty
mkLambdaProperty functionArn
  = LambdaProperty
      {functionArn = functionArn, payload = Prelude.Nothing}
instance ToResourceProperties LambdaProperty where
  toResourceProperties LambdaProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.Lambda",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FunctionArn" JSON..= functionArn]
                           (Prelude.catMaybes [(JSON..=) "Payload" Prelude.<$> payload]))}
instance JSON.ToJSON LambdaProperty where
  toJSON LambdaProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FunctionArn" JSON..= functionArn]
              (Prelude.catMaybes [(JSON..=) "Payload" Prelude.<$> payload])))
instance Property "FunctionArn" LambdaProperty where
  type PropertyType "FunctionArn" LambdaProperty = Value Prelude.Text
  set newValue LambdaProperty {..}
    = LambdaProperty {functionArn = newValue, ..}
instance Property "Payload" LambdaProperty where
  type PropertyType "Payload" LambdaProperty = PayloadProperty
  set newValue LambdaProperty {..}
    = LambdaProperty {payload = Prelude.pure newValue, ..}