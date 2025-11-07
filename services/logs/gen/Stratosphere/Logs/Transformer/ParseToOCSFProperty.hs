module Stratosphere.Logs.Transformer.ParseToOCSFProperty (
        ParseToOCSFProperty(..), mkParseToOCSFProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParseToOCSFProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsetoocsf.html>
    ParseToOCSFProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsetoocsf.html#cfn-logs-transformer-parsetoocsf-eventsource>
                         eventSource :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsetoocsf.html#cfn-logs-transformer-parsetoocsf-ocsfversion>
                         ocsfVersion :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsetoocsf.html#cfn-logs-transformer-parsetoocsf-source>
                         source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParseToOCSFProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ParseToOCSFProperty
mkParseToOCSFProperty eventSource ocsfVersion
  = ParseToOCSFProperty
      {haddock_workaround_ = (), eventSource = eventSource,
       ocsfVersion = ocsfVersion, source = Prelude.Nothing}
instance ToResourceProperties ParseToOCSFProperty where
  toResourceProperties ParseToOCSFProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.ParseToOCSF",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventSource" JSON..= eventSource,
                            "OcsfVersion" JSON..= ocsfVersion]
                           (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source]))}
instance JSON.ToJSON ParseToOCSFProperty where
  toJSON ParseToOCSFProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventSource" JSON..= eventSource,
               "OcsfVersion" JSON..= ocsfVersion]
              (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source])))
instance Property "EventSource" ParseToOCSFProperty where
  type PropertyType "EventSource" ParseToOCSFProperty = Value Prelude.Text
  set newValue ParseToOCSFProperty {..}
    = ParseToOCSFProperty {eventSource = newValue, ..}
instance Property "OcsfVersion" ParseToOCSFProperty where
  type PropertyType "OcsfVersion" ParseToOCSFProperty = Value Prelude.Text
  set newValue ParseToOCSFProperty {..}
    = ParseToOCSFProperty {ocsfVersion = newValue, ..}
instance Property "Source" ParseToOCSFProperty where
  type PropertyType "Source" ParseToOCSFProperty = Value Prelude.Text
  set newValue ParseToOCSFProperty {..}
    = ParseToOCSFProperty {source = Prelude.pure newValue, ..}