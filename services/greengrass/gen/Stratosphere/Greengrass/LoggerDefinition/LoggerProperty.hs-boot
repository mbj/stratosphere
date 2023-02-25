module Stratosphere.Greengrass.LoggerDefinition.LoggerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoggerProperty :: Prelude.Type
instance ToResourceProperties LoggerProperty
instance JSON.ToJSON LoggerProperty