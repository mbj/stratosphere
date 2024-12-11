module Stratosphere.ApplicationSignals.ServiceLevelObjective.SliMetricProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SliMetricProperty :: Prelude.Type
instance ToResourceProperties SliMetricProperty
instance Prelude.Eq SliMetricProperty
instance Prelude.Show SliMetricProperty
instance JSON.ToJSON SliMetricProperty