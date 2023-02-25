module Stratosphere.Route53RecoveryReadiness.ResourceSet.ResourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourceProperty :: Prelude.Type
instance ToResourceProperties ResourceProperty
instance JSON.ToJSON ResourceProperty