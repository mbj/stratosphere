module Stratosphere.RUM.AppMonitor.CustomEventsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomEventsProperty :: Prelude.Type
instance ToResourceProperties CustomEventsProperty
instance JSON.ToJSON CustomEventsProperty