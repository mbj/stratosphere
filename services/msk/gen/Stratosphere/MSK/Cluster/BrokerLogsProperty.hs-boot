module Stratosphere.MSK.Cluster.BrokerLogsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BrokerLogsProperty :: Prelude.Type
instance ToResourceProperties BrokerLogsProperty
instance JSON.ToJSON BrokerLogsProperty