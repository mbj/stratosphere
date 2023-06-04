module Stratosphere.WAFv2.WebACL.RequestInspectionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RequestInspectionProperty :: Prelude.Type
instance ToResourceProperties RequestInspectionProperty
instance JSON.ToJSON RequestInspectionProperty