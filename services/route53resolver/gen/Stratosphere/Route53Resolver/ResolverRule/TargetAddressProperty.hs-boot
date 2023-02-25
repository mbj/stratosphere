module Stratosphere.Route53Resolver.ResolverRule.TargetAddressProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TargetAddressProperty :: Prelude.Type
instance ToResourceProperties TargetAddressProperty
instance JSON.ToJSON TargetAddressProperty