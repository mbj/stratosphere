module Stratosphere.MediaPackage.PackagingGroup.AuthorizationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AuthorizationProperty :: Prelude.Type
instance ToResourceProperties AuthorizationProperty
instance JSON.ToJSON AuthorizationProperty