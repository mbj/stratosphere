module Stratosphere.DataBrew.Dataset.FilesLimitProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FilesLimitProperty :: Prelude.Type
instance ToResourceProperties FilesLimitProperty
instance Prelude.Eq FilesLimitProperty
instance Prelude.Show FilesLimitProperty
instance JSON.ToJSON FilesLimitProperty