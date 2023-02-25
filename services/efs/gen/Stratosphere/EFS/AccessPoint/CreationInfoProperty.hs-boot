module Stratosphere.EFS.AccessPoint.CreationInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CreationInfoProperty :: Prelude.Type
instance ToResourceProperties CreationInfoProperty
instance JSON.ToJSON CreationInfoProperty