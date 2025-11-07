module Stratosphere.Logs.Transformer.ParseRoute53Property (
        ParseRoute53Property(..), mkParseRoute53Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParseRoute53Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parseroute53.html>
    ParseRoute53Property {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parseroute53.html#cfn-logs-transformer-parseroute53-source>
                          source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParseRoute53Property :: ParseRoute53Property
mkParseRoute53Property
  = ParseRoute53Property
      {haddock_workaround_ = (), source = Prelude.Nothing}
instance ToResourceProperties ParseRoute53Property where
  toResourceProperties ParseRoute53Property {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.ParseRoute53",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source])}
instance JSON.ToJSON ParseRoute53Property where
  toJSON ParseRoute53Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source]))
instance Property "Source" ParseRoute53Property where
  type PropertyType "Source" ParseRoute53Property = Value Prelude.Text
  set newValue ParseRoute53Property {..}
    = ParseRoute53Property {source = Prelude.pure newValue, ..}