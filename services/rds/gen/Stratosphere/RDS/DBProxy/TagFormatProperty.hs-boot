module Stratosphere.RDS.DBProxy.TagFormatProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TagFormatProperty :: Prelude.Type
instance ToResourceProperties TagFormatProperty
instance JSON.ToJSON TagFormatProperty