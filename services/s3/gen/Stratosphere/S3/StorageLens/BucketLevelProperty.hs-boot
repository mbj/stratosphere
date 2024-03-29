module Stratosphere.S3.StorageLens.BucketLevelProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BucketLevelProperty :: Prelude.Type
instance ToResourceProperties BucketLevelProperty
instance Prelude.Eq BucketLevelProperty
instance Prelude.Show BucketLevelProperty
instance JSON.ToJSON BucketLevelProperty