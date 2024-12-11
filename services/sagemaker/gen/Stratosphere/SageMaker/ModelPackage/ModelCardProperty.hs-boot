module Stratosphere.SageMaker.ModelPackage.ModelCardProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ModelCardProperty :: Prelude.Type
instance ToResourceProperties ModelCardProperty
instance Prelude.Eq ModelCardProperty
instance Prelude.Show ModelCardProperty
instance JSON.ToJSON ModelCardProperty