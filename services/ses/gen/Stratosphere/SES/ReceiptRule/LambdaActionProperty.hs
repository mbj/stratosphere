module Stratosphere.SES.ReceiptRule.LambdaActionProperty (
        LambdaActionProperty(..), mkLambdaActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html>
    LambdaActionProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-functionarn>
                          functionArn :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-invocationtype>
                          invocationType :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-topicarn>
                          topicArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaActionProperty ::
  Value Prelude.Text -> LambdaActionProperty
mkLambdaActionProperty functionArn
  = LambdaActionProperty
      {haddock_workaround_ = (), functionArn = functionArn,
       invocationType = Prelude.Nothing, topicArn = Prelude.Nothing}
instance ToResourceProperties LambdaActionProperty where
  toResourceProperties LambdaActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRule.LambdaAction",
         supportsTags = Prelude.False,
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