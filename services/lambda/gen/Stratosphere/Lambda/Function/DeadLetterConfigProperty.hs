module Stratosphere.Lambda.Function.DeadLetterConfigProperty (
        DeadLetterConfigProperty(..), mkDeadLetterConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeadLetterConfigProperty
  = DeadLetterConfigProperty {targetArn :: (Prelude.Maybe (Value Prelude.Text))}
mkDeadLetterConfigProperty :: DeadLetterConfigProperty
mkDeadLetterConfigProperty
  = DeadLetterConfigProperty {targetArn = Prelude.Nothing}
instance ToResourceProperties DeadLetterConfigProperty where
  toResourceProperties DeadLetterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.DeadLetterConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "TargetArn" Prelude.<$> targetArn])}
instance JSON.ToJSON DeadLetterConfigProperty where
  toJSON DeadLetterConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "TargetArn" Prelude.<$> targetArn]))
instance Property "TargetArn" DeadLetterConfigProperty where
  type PropertyType "TargetArn" DeadLetterConfigProperty = Value Prelude.Text
  set newValue DeadLetterConfigProperty {}
    = DeadLetterConfigProperty {targetArn = Prelude.pure newValue, ..}