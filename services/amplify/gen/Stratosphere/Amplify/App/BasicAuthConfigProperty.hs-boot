module Stratosphere.Amplify.App.BasicAuthConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BasicAuthConfigProperty :: Prelude.Type
instance ToResourceProperties BasicAuthConfigProperty
instance JSON.ToJSON BasicAuthConfigProperty