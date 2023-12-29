module Stratosphere.AmazonMQ.Broker.LogListProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LogListProperty :: Prelude.Type
instance ToResourceProperties LogListProperty
instance Prelude.Eq LogListProperty
instance Prelude.Show LogListProperty
instance JSON.ToJSON LogListProperty