module Stratosphere.MediaStore.Container.MetricPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricPolicyProperty :: Prelude.Type
instance ToResourceProperties MetricPolicyProperty
instance JSON.ToJSON MetricPolicyProperty