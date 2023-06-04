module Stratosphere.QuickSight.Dashboard.ReferenceLineProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReferenceLineProperty :: Prelude.Type
instance ToResourceProperties ReferenceLineProperty
instance JSON.ToJSON ReferenceLineProperty