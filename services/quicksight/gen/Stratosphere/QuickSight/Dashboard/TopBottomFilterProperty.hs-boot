module Stratosphere.QuickSight.Dashboard.TopBottomFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TopBottomFilterProperty :: Prelude.Type
instance ToResourceProperties TopBottomFilterProperty
instance JSON.ToJSON TopBottomFilterProperty