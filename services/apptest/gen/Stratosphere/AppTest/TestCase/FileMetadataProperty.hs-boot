module Stratosphere.AppTest.TestCase.FileMetadataProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FileMetadataProperty :: Prelude.Type
instance ToResourceProperties FileMetadataProperty
instance Prelude.Eq FileMetadataProperty
instance Prelude.Show FileMetadataProperty
instance JSON.ToJSON FileMetadataProperty