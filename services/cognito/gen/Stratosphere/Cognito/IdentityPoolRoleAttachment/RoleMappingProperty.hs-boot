module Stratosphere.Cognito.IdentityPoolRoleAttachment.RoleMappingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RoleMappingProperty :: Prelude.Type
instance ToResourceProperties RoleMappingProperty
instance JSON.ToJSON RoleMappingProperty