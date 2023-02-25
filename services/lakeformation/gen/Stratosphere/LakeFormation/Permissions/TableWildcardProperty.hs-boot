module Stratosphere.LakeFormation.Permissions.TableWildcardProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TableWildcardProperty :: Prelude.Type
instance ToResourceProperties TableWildcardProperty
instance JSON.ToJSON TableWildcardProperty