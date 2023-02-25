module Stratosphere.SageMaker.UserProfile.ResourceSpecProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourceSpecProperty :: Prelude.Type
instance ToResourceProperties ResourceSpecProperty
instance JSON.ToJSON ResourceSpecProperty