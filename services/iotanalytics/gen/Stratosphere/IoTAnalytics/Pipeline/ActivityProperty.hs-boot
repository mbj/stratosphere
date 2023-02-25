module Stratosphere.IoTAnalytics.Pipeline.ActivityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ActivityProperty :: Prelude.Type
instance ToResourceProperties ActivityProperty
instance JSON.ToJSON ActivityProperty