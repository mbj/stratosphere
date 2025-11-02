module Stratosphere.Pipes.Pipe.DeadLetterConfigProperty (
        DeadLetterConfigProperty(..), mkDeadLetterConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeadLetterConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-deadletterconfig.html>
    DeadLetterConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-deadletterconfig.html#cfn-pipes-pipe-deadletterconfig-arn>
                              arn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeadLetterConfigProperty :: DeadLetterConfigProperty
mkDeadLetterConfigProperty
  = DeadLetterConfigProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing}
instance ToResourceProperties DeadLetterConfigProperty where
  toResourceProperties DeadLetterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.DeadLetterConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn])}
instance JSON.ToJSON DeadLetterConfigProperty where
  toJSON DeadLetterConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn]))
instance Property "Arn" DeadLetterConfigProperty where
  type PropertyType "Arn" DeadLetterConfigProperty = Value Prelude.Text
  set newValue DeadLetterConfigProperty {..}
    = DeadLetterConfigProperty {arn = Prelude.pure newValue, ..}