module Stratosphere.LakeFormation.PrincipalPermissions.DatabaseResourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatabaseResourceProperty :: Prelude.Type
instance ToResourceProperties DatabaseResourceProperty
instance Prelude.Eq DatabaseResourceProperty
instance Prelude.Show DatabaseResourceProperty
instance JSON.ToJSON DatabaseResourceProperty