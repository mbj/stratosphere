module Stratosphere.IoTAnalytics.Pipeline.ActivityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ActivityProperty :: Prelude.Type
instance ToResourceProperties ActivityProperty
instance Prelude.Eq ActivityProperty
instance Prelude.Show ActivityProperty
instance JSON.ToJSON ActivityProperty