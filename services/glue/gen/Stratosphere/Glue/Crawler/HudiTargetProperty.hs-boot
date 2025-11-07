module Stratosphere.Glue.Crawler.HudiTargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HudiTargetProperty :: Prelude.Type
instance ToResourceProperties HudiTargetProperty
instance Prelude.Eq HudiTargetProperty
instance Prelude.Show HudiTargetProperty
instance JSON.ToJSON HudiTargetProperty