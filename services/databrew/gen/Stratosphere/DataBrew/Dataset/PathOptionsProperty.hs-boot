module Stratosphere.DataBrew.Dataset.PathOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PathOptionsProperty :: Prelude.Type
instance ToResourceProperties PathOptionsProperty
instance JSON.ToJSON PathOptionsProperty