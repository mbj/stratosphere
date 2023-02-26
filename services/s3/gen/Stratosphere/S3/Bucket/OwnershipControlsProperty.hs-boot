module Stratosphere.S3.Bucket.OwnershipControlsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OwnershipControlsProperty :: Prelude.Type
instance ToResourceProperties OwnershipControlsProperty
instance JSON.ToJSON OwnershipControlsProperty