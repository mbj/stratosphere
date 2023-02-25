module Stratosphere.AppMesh.VirtualNode.LoggingFormatProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoggingFormatProperty :: Prelude.Type
instance ToResourceProperties LoggingFormatProperty
instance JSON.ToJSON LoggingFormatProperty