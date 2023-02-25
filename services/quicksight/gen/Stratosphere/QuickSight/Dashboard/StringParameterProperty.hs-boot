module Stratosphere.QuickSight.Dashboard.StringParameterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StringParameterProperty :: Prelude.Type
instance ToResourceProperties StringParameterProperty
instance JSON.ToJSON StringParameterProperty