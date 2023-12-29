module Stratosphere.SageMaker.ModelPackage.FileSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FileSourceProperty :: Prelude.Type
instance ToResourceProperties FileSourceProperty
instance Prelude.Eq FileSourceProperty
instance Prelude.Show FileSourceProperty
instance JSON.ToJSON FileSourceProperty