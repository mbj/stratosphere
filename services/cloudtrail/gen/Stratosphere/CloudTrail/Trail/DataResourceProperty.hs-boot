module Stratosphere.CloudTrail.Trail.DataResourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataResourceProperty :: Prelude.Type
instance ToResourceProperties DataResourceProperty
instance Prelude.Eq DataResourceProperty
instance Prelude.Show DataResourceProperty
instance JSON.ToJSON DataResourceProperty