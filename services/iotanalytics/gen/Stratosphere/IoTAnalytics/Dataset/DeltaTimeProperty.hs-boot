module Stratosphere.IoTAnalytics.Dataset.DeltaTimeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeltaTimeProperty :: Prelude.Type
instance ToResourceProperties DeltaTimeProperty
instance Prelude.Eq DeltaTimeProperty
instance Prelude.Show DeltaTimeProperty
instance JSON.ToJSON DeltaTimeProperty