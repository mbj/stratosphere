module Stratosphere.SageMaker.UserProfile.CustomImageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomImageProperty :: Prelude.Type
instance ToResourceProperties CustomImageProperty
instance JSON.ToJSON CustomImageProperty