module Stratosphere.SageMaker.ModelCard.ContainerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ContainerProperty :: Prelude.Type
instance ToResourceProperties ContainerProperty
instance Prelude.Eq ContainerProperty
instance Prelude.Show ContainerProperty
instance JSON.ToJSON ContainerProperty