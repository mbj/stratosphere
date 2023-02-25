module Stratosphere.Synthetics.Canary.RunConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RunConfigProperty :: Prelude.Type
instance ToResourceProperties RunConfigProperty
instance JSON.ToJSON RunConfigProperty