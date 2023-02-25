module Stratosphere.IoT.SecurityProfile.MetricValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricValueProperty :: Prelude.Type
instance ToResourceProperties MetricValueProperty
instance JSON.ToJSON MetricValueProperty