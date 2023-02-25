module Stratosphere.WAFv2.LoggingConfiguration.LoggingFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoggingFilterProperty :: Prelude.Type
instance ToResourceProperties LoggingFilterProperty
instance JSON.ToJSON LoggingFilterProperty