module Stratosphere.DataBrew.Dataset.FormatOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FormatOptionsProperty :: Prelude.Type
instance ToResourceProperties FormatOptionsProperty
instance JSON.ToJSON FormatOptionsProperty