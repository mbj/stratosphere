module Stratosphere.Bedrock.DataSource.SeedUrlProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SeedUrlProperty :: Prelude.Type
instance ToResourceProperties SeedUrlProperty
instance Prelude.Eq SeedUrlProperty
instance Prelude.Show SeedUrlProperty
instance JSON.ToJSON SeedUrlProperty