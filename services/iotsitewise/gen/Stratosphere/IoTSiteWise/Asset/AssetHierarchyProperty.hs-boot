module Stratosphere.IoTSiteWise.Asset.AssetHierarchyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AssetHierarchyProperty :: Prelude.Type
instance ToResourceProperties AssetHierarchyProperty
instance JSON.ToJSON AssetHierarchyProperty