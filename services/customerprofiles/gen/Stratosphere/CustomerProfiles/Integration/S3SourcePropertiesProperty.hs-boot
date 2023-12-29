module Stratosphere.CustomerProfiles.Integration.S3SourcePropertiesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3SourcePropertiesProperty :: Prelude.Type
instance ToResourceProperties S3SourcePropertiesProperty
instance Prelude.Eq S3SourcePropertiesProperty
instance Prelude.Show S3SourcePropertiesProperty
instance JSON.ToJSON S3SourcePropertiesProperty