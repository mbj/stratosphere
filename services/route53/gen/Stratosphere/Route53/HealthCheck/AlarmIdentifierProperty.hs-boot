module Stratosphere.Route53.HealthCheck.AlarmIdentifierProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AlarmIdentifierProperty :: Prelude.Type
instance ToResourceProperties AlarmIdentifierProperty
instance JSON.ToJSON AlarmIdentifierProperty