module Stratosphere.Logs.Transformer.ParseVPCProperty (
        ParseVPCProperty(..), mkParseVPCProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParseVPCProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsevpc.html>
    ParseVPCProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsevpc.html#cfn-logs-transformer-parsevpc-source>
                      source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParseVPCProperty :: ParseVPCProperty
mkParseVPCProperty
  = ParseVPCProperty
      {haddock_workaround_ = (), source = Prelude.Nothing}
instance ToResourceProperties ParseVPCProperty where
  toResourceProperties ParseVPCProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.ParseVPC",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source])}
instance JSON.ToJSON ParseVPCProperty where
  toJSON ParseVPCProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source]))
instance Property "Source" ParseVPCProperty where
  type PropertyType "Source" ParseVPCProperty = Value Prelude.Text
  set newValue ParseVPCProperty {..}
    = ParseVPCProperty {source = Prelude.pure newValue, ..}