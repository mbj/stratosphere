module Stratosphere.LakeFormation.TagAssociation.TableResourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TableResourceProperty :: Prelude.Type
instance ToResourceProperties TableResourceProperty
instance JSON.ToJSON TableResourceProperty