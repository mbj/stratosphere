module Stratosphere.SageMaker.ModelPackage.BiasProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BiasProperty :: Prelude.Type
instance ToResourceProperties BiasProperty
instance Prelude.Eq BiasProperty
instance Prelude.Show BiasProperty
instance JSON.ToJSON BiasProperty