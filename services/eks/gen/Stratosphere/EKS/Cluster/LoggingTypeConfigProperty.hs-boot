module Stratosphere.EKS.Cluster.LoggingTypeConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoggingTypeConfigProperty :: Prelude.Type
instance ToResourceProperties LoggingTypeConfigProperty
instance JSON.ToJSON LoggingTypeConfigProperty