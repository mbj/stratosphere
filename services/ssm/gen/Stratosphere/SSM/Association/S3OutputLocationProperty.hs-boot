module Stratosphere.SSM.Association.S3OutputLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3OutputLocationProperty :: Prelude.Type
instance ToResourceProperties S3OutputLocationProperty
instance JSON.ToJSON S3OutputLocationProperty