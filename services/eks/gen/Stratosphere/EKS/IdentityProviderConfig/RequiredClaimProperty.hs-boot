module Stratosphere.EKS.IdentityProviderConfig.RequiredClaimProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RequiredClaimProperty :: Prelude.Type
instance ToResourceProperties RequiredClaimProperty
instance JSON.ToJSON RequiredClaimProperty