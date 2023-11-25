module Stratosphere.WAFv2.WebACL.ResponseInspectionJsonProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResponseInspectionJsonProperty :: Prelude.Type
instance ToResourceProperties ResponseInspectionJsonProperty
instance JSON.ToJSON ResponseInspectionJsonProperty