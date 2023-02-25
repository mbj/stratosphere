module Stratosphere.EKS.Cluster.LoggingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoggingProperty :: Prelude.Type
instance ToResourceProperties LoggingProperty
instance JSON.ToJSON LoggingProperty