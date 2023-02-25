module Stratosphere.IoTAnalytics.Pipeline.MathProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MathProperty :: Prelude.Type
instance ToResourceProperties MathProperty
instance JSON.ToJSON MathProperty