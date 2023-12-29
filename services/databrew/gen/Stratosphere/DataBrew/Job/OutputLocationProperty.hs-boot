module Stratosphere.DataBrew.Job.OutputLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OutputLocationProperty :: Prelude.Type
instance ToResourceProperties OutputLocationProperty
instance Prelude.Eq OutputLocationProperty
instance Prelude.Show OutputLocationProperty
instance JSON.ToJSON OutputLocationProperty