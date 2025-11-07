module Stratosphere.Logs.Transformer.ParseJSONProperty (
        ParseJSONProperty(..), mkParseJSONProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParseJSONProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsejson.html>
    ParseJSONProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsejson.html#cfn-logs-transformer-parsejson-destination>
                       destination :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsejson.html#cfn-logs-transformer-parsejson-source>
                       source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParseJSONProperty :: ParseJSONProperty
mkParseJSONProperty
  = ParseJSONProperty
      {haddock_workaround_ = (), destination = Prelude.Nothing,
       source = Prelude.Nothing}
instance ToResourceProperties ParseJSONProperty where
  toResourceProperties ParseJSONProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.ParseJSON",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "Source" Prelude.<$> source])}
instance JSON.ToJSON ParseJSONProperty where
  toJSON ParseJSONProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "Source" Prelude.<$> source]))
instance Property "Destination" ParseJSONProperty where
  type PropertyType "Destination" ParseJSONProperty = Value Prelude.Text
  set newValue ParseJSONProperty {..}
    = ParseJSONProperty {destination = Prelude.pure newValue, ..}
instance Property "Source" ParseJSONProperty where
  type PropertyType "Source" ParseJSONProperty = Value Prelude.Text
  set newValue ParseJSONProperty {..}
    = ParseJSONProperty {source = Prelude.pure newValue, ..}