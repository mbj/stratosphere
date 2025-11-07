module Stratosphere.Logs.Transformer.ParseCloudfrontProperty (
        ParseCloudfrontProperty(..), mkParseCloudfrontProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParseCloudfrontProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsecloudfront.html>
    ParseCloudfrontProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsecloudfront.html#cfn-logs-transformer-parsecloudfront-source>
                             source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParseCloudfrontProperty :: ParseCloudfrontProperty
mkParseCloudfrontProperty
  = ParseCloudfrontProperty
      {haddock_workaround_ = (), source = Prelude.Nothing}
instance ToResourceProperties ParseCloudfrontProperty where
  toResourceProperties ParseCloudfrontProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.ParseCloudfront",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source])}
instance JSON.ToJSON ParseCloudfrontProperty where
  toJSON ParseCloudfrontProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source]))
instance Property "Source" ParseCloudfrontProperty where
  type PropertyType "Source" ParseCloudfrontProperty = Value Prelude.Text
  set newValue ParseCloudfrontProperty {..}
    = ParseCloudfrontProperty {source = Prelude.pure newValue, ..}