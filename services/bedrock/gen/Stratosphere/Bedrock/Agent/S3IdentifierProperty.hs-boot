module Stratosphere.Bedrock.Agent.S3IdentifierProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3IdentifierProperty :: Prelude.Type
instance ToResourceProperties S3IdentifierProperty
instance Prelude.Eq S3IdentifierProperty
instance Prelude.Show S3IdentifierProperty
instance JSON.ToJSON S3IdentifierProperty