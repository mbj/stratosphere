module Stratosphere.Glue.Crawler.DeltaTargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeltaTargetProperty :: Prelude.Type
instance ToResourceProperties DeltaTargetProperty
instance Prelude.Eq DeltaTargetProperty
instance Prelude.Show DeltaTargetProperty
instance JSON.ToJSON DeltaTargetProperty