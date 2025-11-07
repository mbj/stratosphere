module Stratosphere.Amplify.App.JobConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JobConfigProperty :: Prelude.Type
instance ToResourceProperties JobConfigProperty
instance Prelude.Eq JobConfigProperty
instance Prelude.Show JobConfigProperty
instance JSON.ToJSON JobConfigProperty