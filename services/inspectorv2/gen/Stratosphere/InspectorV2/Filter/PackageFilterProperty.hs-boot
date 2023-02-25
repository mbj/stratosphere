module Stratosphere.InspectorV2.Filter.PackageFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PackageFilterProperty :: Prelude.Type
instance ToResourceProperties PackageFilterProperty
instance JSON.ToJSON PackageFilterProperty