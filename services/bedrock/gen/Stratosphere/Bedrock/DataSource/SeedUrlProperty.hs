module Stratosphere.Bedrock.DataSource.SeedUrlProperty (
        SeedUrlProperty(..), mkSeedUrlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SeedUrlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-seedurl.html>
    SeedUrlProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-seedurl.html#cfn-bedrock-datasource-seedurl-url>
                     url :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSeedUrlProperty :: Value Prelude.Text -> SeedUrlProperty
mkSeedUrlProperty url
  = SeedUrlProperty {haddock_workaround_ = (), url = url}
instance ToResourceProperties SeedUrlProperty where
  toResourceProperties SeedUrlProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.SeedUrl",
         supportsTags = Prelude.False, properties = ["Url" JSON..= url]}
instance JSON.ToJSON SeedUrlProperty where
  toJSON SeedUrlProperty {..} = JSON.object ["Url" JSON..= url]
instance Property "Url" SeedUrlProperty where
  type PropertyType "Url" SeedUrlProperty = Value Prelude.Text
  set newValue SeedUrlProperty {..}
    = SeedUrlProperty {url = newValue, ..}