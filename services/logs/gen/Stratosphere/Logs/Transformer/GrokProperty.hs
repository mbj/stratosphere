module Stratosphere.Logs.Transformer.GrokProperty (
        GrokProperty(..), mkGrokProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrokProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-grok.html>
    GrokProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-grok.html#cfn-logs-transformer-grok-match>
                  match :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-grok.html#cfn-logs-transformer-grok-source>
                  source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrokProperty :: Value Prelude.Text -> GrokProperty
mkGrokProperty match
  = GrokProperty
      {haddock_workaround_ = (), match = match, source = Prelude.Nothing}
instance ToResourceProperties GrokProperty where
  toResourceProperties GrokProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.Grok",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Match" JSON..= match]
                           (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source]))}
instance JSON.ToJSON GrokProperty where
  toJSON GrokProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Match" JSON..= match]
              (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source])))
instance Property "Match" GrokProperty where
  type PropertyType "Match" GrokProperty = Value Prelude.Text
  set newValue GrokProperty {..}
    = GrokProperty {match = newValue, ..}
instance Property "Source" GrokProperty where
  type PropertyType "Source" GrokProperty = Value Prelude.Text
  set newValue GrokProperty {..}
    = GrokProperty {source = Prelude.pure newValue, ..}