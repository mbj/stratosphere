module Stratosphere.Route53RecoveryReadiness.ResourceSet.NLBResourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NLBResourceProperty :: Prelude.Type
instance ToResourceProperties NLBResourceProperty
instance JSON.ToJSON NLBResourceProperty