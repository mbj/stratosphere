module Stratosphere.ApplicationInsights.Application.LogProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LogProperty :: Prelude.Type
instance ToResourceProperties LogProperty
instance JSON.ToJSON LogProperty