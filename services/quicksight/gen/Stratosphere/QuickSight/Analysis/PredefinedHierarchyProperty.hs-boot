module Stratosphere.QuickSight.Analysis.PredefinedHierarchyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PredefinedHierarchyProperty :: Prelude.Type
instance ToResourceProperties PredefinedHierarchyProperty
instance JSON.ToJSON PredefinedHierarchyProperty