module Stratosphere.Route53.RecordSetGroup.RecordSetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RecordSetProperty :: Prelude.Type
instance ToResourceProperties RecordSetProperty
instance JSON.ToJSON RecordSetProperty