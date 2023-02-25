module Stratosphere.IoT.SecurityProfile.MetricToRetainProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricToRetainProperty :: Prelude.Type
instance ToResourceProperties MetricToRetainProperty
instance JSON.ToJSON MetricToRetainProperty