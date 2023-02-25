module Stratosphere.Synthetics.Canary.BaseScreenshotProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BaseScreenshotProperty :: Prelude.Type
instance ToResourceProperties BaseScreenshotProperty
instance JSON.ToJSON BaseScreenshotProperty