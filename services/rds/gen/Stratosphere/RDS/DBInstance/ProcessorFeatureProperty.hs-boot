module Stratosphere.RDS.DBInstance.ProcessorFeatureProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProcessorFeatureProperty :: Prelude.Type
instance ToResourceProperties ProcessorFeatureProperty
instance JSON.ToJSON ProcessorFeatureProperty