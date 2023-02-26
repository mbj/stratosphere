module Stratosphere.ApplicationInsights.Application.ConfigurationDetailsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConfigurationDetailsProperty :: Prelude.Type
instance ToResourceProperties ConfigurationDetailsProperty
instance JSON.ToJSON ConfigurationDetailsProperty