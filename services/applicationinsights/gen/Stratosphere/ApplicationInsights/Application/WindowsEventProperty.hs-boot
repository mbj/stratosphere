module Stratosphere.ApplicationInsights.Application.WindowsEventProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WindowsEventProperty :: Prelude.Type
instance ToResourceProperties WindowsEventProperty
instance JSON.ToJSON WindowsEventProperty