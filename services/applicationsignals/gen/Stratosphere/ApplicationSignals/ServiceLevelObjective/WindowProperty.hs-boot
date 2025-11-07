module Stratosphere.ApplicationSignals.ServiceLevelObjective.WindowProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WindowProperty :: Prelude.Type
instance ToResourceProperties WindowProperty
instance Prelude.Eq WindowProperty
instance Prelude.Show WindowProperty
instance JSON.ToJSON WindowProperty