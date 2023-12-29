module Stratosphere.CloudWatch.AnomalyDetector.RangeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RangeProperty :: Prelude.Type
instance ToResourceProperties RangeProperty
instance Prelude.Eq RangeProperty
instance Prelude.Show RangeProperty
instance JSON.ToJSON RangeProperty