module Stratosphere.RDS.DBProxy.AuthFormatProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AuthFormatProperty :: Prelude.Type
instance ToResourceProperties AuthFormatProperty
instance JSON.ToJSON AuthFormatProperty