module Stratosphere.DataBrew.Dataset.PathParameterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PathParameterProperty :: Prelude.Type
instance ToResourceProperties PathParameterProperty
instance Prelude.Eq PathParameterProperty
instance Prelude.Show PathParameterProperty
instance JSON.ToJSON PathParameterProperty