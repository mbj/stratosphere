module Stratosphere.AmplifyUIBuilder.Form.FieldConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FieldConfigProperty :: Prelude.Type
instance ToResourceProperties FieldConfigProperty
instance JSON.ToJSON FieldConfigProperty