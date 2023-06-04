module Stratosphere.EC2.NetworkInsightsPath.PathFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PathFilterProperty :: Prelude.Type
instance ToResourceProperties PathFilterProperty
instance JSON.ToJSON PathFilterProperty