module Stratosphere.S3.Bucket.RoutingRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RoutingRuleProperty :: Prelude.Type
instance ToResourceProperties RoutingRuleProperty
instance JSON.ToJSON RoutingRuleProperty