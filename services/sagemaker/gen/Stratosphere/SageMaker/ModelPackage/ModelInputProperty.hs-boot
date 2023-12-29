module Stratosphere.SageMaker.ModelPackage.ModelInputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ModelInputProperty :: Prelude.Type
instance ToResourceProperties ModelInputProperty
instance Prelude.Eq ModelInputProperty
instance Prelude.Show ModelInputProperty
instance JSON.ToJSON ModelInputProperty