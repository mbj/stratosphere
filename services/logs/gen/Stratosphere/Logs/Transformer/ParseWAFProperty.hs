module Stratosphere.Logs.Transformer.ParseWAFProperty (
        ParseWAFProperty(..), mkParseWAFProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParseWAFProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsewaf.html>
    ParseWAFProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsewaf.html#cfn-logs-transformer-parsewaf-source>
                      source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParseWAFProperty :: ParseWAFProperty
mkParseWAFProperty
  = ParseWAFProperty
      {haddock_workaround_ = (), source = Prelude.Nothing}
instance ToResourceProperties ParseWAFProperty where
  toResourceProperties ParseWAFProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.ParseWAF",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source])}
instance JSON.ToJSON ParseWAFProperty where
  toJSON ParseWAFProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source]))
instance Property "Source" ParseWAFProperty where
  type PropertyType "Source" ParseWAFProperty = Value Prelude.Text
  set newValue ParseWAFProperty {..}
    = ParseWAFProperty {source = Prelude.pure newValue, ..}