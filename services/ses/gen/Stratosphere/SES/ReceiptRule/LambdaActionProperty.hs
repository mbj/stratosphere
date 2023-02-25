module Stratosphere.SES.ReceiptRule.LambdaActionProperty (
        LambdaActionProperty(..), mkLambdaActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaActionProperty
  = LambdaActionProperty {functionArn :: (Value Prelude.Text),
                          invocationType :: (Prelude.Maybe (Value Prelude.Text)),
                          topicArn :: (Prelude.Maybe (Value Prelude.Text))}
mkLambdaActionProperty ::
  Value Prelude.Text -> LambdaActionProperty
mkLambdaActionProperty functionArn
  = LambdaActionProperty
      {functionArn = functionArn, invocationType = Prelude.Nothing,
       topicArn = Prelude.Nothing}
instance ToResourceProperties LambdaActionProperty where
  toResourceProperties LambdaActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRule.LambdaAction",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FunctionArn" JSON..= functionArn]
                           (Prelude.catMaybes
                              [(JSON..=) "InvocationType" Prelude.<$> invocationType,
                               (JSON..=) "TopicArn" Prelude.<$> topicArn]))}
instance JSON.ToJSON LambdaActionProperty where
  toJSON LambdaActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FunctionArn" JSON..= functionArn]
              (Prelude.catMaybes
                 [(JSON..=) "InvocationType" Prelude.<$> invocationType,
                  (JSON..=) "TopicArn" Prelude.<$> topicArn])))
instance Property "FunctionArn" LambdaActionProperty where
  type PropertyType "FunctionArn" LambdaActionProperty = Value Prelude.Text
  set newValue LambdaActionProperty {..}
    = LambdaActionProperty {functionArn = newValue, ..}
instance Property "InvocationType" LambdaActionProperty where
  type PropertyType "InvocationType" LambdaActionProperty = Value Prelude.Text
  set newValue LambdaActionProperty {..}
    = LambdaActionProperty {invocationType = Prelude.pure newValue, ..}
instance Property "TopicArn" LambdaActionProperty where
  type PropertyType "TopicArn" LambdaActionProperty = Value Prelude.Text
  set newValue LambdaActionProperty {..}
    = LambdaActionProperty {topicArn = Prelude.pure newValue, ..}