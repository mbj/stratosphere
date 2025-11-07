module Stratosphere.Logs.Transformer.ParsePostgresProperty (
        ParsePostgresProperty(..), mkParsePostgresProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParsePostgresProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsepostgres.html>
    ParsePostgresProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsepostgres.html#cfn-logs-transformer-parsepostgres-source>
                           source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParsePostgresProperty :: ParsePostgresProperty
mkParsePostgresProperty
  = ParsePostgresProperty
      {haddock_workaround_ = (), source = Prelude.Nothing}
instance ToResourceProperties ParsePostgresProperty where
  toResourceProperties ParsePostgresProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.ParsePostgres",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source])}
instance JSON.ToJSON ParsePostgresProperty where
  toJSON ParsePostgresProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source]))
instance Property "Source" ParsePostgresProperty where
  type PropertyType "Source" ParsePostgresProperty = Value Prelude.Text
  set newValue ParsePostgresProperty {..}
    = ParsePostgresProperty {source = Prelude.pure newValue, ..}