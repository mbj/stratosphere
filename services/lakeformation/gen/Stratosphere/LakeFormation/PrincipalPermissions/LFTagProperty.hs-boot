module Stratosphere.LakeFormation.PrincipalPermissions.LFTagProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LFTagProperty :: Prelude.Type
instance ToResourceProperties LFTagProperty
instance JSON.ToJSON LFTagProperty