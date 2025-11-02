module Stratosphere.Lambda.Function.DeadLetterConfigProperty (
        DeadLetterConfigProperty(..), mkDeadLetterConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeadLetterConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-deadletterconfig.html>
    DeadLetterConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-deadletterconfig.html#cfn-lambda-function-deadletterconfig-targetarn>
                              targetArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeadLetterConfigProperty :: DeadLetterConfigProperty
mkDeadLetterConfigProperty
  = DeadLetterConfigProperty
      {haddock_workaround_ = (), targetArn = Prelude.Nothing}
instance ToResourceProperties DeadLetterConfigProperty where
  toResourceProperties DeadLetterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.DeadLetterConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "TargetArn" Prelude.<$> targetArn])}
instance JSON.ToJSON DeadLetterConfigProperty where
  toJSON DeadLetterConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "TargetArn" Prelude.<$> targetArn]))
instance Property "TargetArn" DeadLetterConfigProperty where
  type PropertyType "TargetArn" DeadLetterConfigProperty = Value Prelude.Text
  set newValue DeadLetterConfigProperty {..}
    = DeadLetterConfigProperty {targetArn = Prelude.pure newValue, ..}