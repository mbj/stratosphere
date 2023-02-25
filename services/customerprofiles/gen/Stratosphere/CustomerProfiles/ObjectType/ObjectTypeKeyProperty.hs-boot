module Stratosphere.CustomerProfiles.ObjectType.ObjectTypeKeyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ObjectTypeKeyProperty :: Prelude.Type
instance ToResourceProperties ObjectTypeKeyProperty
instance JSON.ToJSON ObjectTypeKeyProperty