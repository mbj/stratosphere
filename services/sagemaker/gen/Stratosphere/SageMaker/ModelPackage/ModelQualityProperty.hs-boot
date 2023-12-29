module Stratosphere.SageMaker.ModelPackage.ModelQualityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ModelQualityProperty :: Prelude.Type
instance ToResourceProperties ModelQualityProperty
instance Prelude.Eq ModelQualityProperty
instance Prelude.Show ModelQualityProperty
instance JSON.ToJSON ModelQualityProperty