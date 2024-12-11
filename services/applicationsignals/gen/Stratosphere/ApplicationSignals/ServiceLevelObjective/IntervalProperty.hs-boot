module Stratosphere.ApplicationSignals.ServiceLevelObjective.IntervalProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IntervalProperty :: Prelude.Type
instance ToResourceProperties IntervalProperty
instance Prelude.Eq IntervalProperty
instance Prelude.Show IntervalProperty
instance JSON.ToJSON IntervalProperty