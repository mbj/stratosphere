module Stratosphere.ImageBuilder.Image.LatestVersionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LatestVersionProperty :: Prelude.Type
instance ToResourceProperties LatestVersionProperty
instance Prelude.Eq LatestVersionProperty
instance Prelude.Show LatestVersionProperty
instance JSON.ToJSON LatestVersionProperty