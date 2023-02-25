module Stratosphere.IoTAnalytics.Pipeline.AddAttributesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AddAttributesProperty :: Prelude.Type
instance ToResourceProperties AddAttributesProperty
instance JSON.ToJSON AddAttributesProperty