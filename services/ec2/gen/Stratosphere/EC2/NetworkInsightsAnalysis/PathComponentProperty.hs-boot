module Stratosphere.EC2.NetworkInsightsAnalysis.PathComponentProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PathComponentProperty :: Prelude.Type
instance ToResourceProperties PathComponentProperty
instance JSON.ToJSON PathComponentProperty