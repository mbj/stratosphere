module Stratosphere.QuickSight.Analysis.WordCloudVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WordCloudVisualProperty :: Prelude.Type
instance ToResourceProperties WordCloudVisualProperty
instance JSON.ToJSON WordCloudVisualProperty