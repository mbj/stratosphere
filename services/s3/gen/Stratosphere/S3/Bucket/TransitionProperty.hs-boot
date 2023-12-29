module Stratosphere.S3.Bucket.TransitionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TransitionProperty :: Prelude.Type
instance ToResourceProperties TransitionProperty
instance Prelude.Eq TransitionProperty
instance Prelude.Show TransitionProperty
instance JSON.ToJSON TransitionProperty