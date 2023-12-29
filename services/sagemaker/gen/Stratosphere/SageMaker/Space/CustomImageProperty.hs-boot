module Stratosphere.SageMaker.Space.CustomImageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomImageProperty :: Prelude.Type
instance ToResourceProperties CustomImageProperty
instance Prelude.Eq CustomImageProperty
instance Prelude.Show CustomImageProperty
instance JSON.ToJSON CustomImageProperty