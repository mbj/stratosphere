module Stratosphere.IoTAnalytics.Dataset.ContainerActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ContainerActionProperty :: Prelude.Type
instance ToResourceProperties ContainerActionProperty
instance JSON.ToJSON ContainerActionProperty