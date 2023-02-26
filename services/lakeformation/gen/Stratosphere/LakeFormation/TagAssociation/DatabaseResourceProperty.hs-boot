module Stratosphere.LakeFormation.TagAssociation.DatabaseResourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatabaseResourceProperty :: Prelude.Type
instance ToResourceProperties DatabaseResourceProperty
instance JSON.ToJSON DatabaseResourceProperty