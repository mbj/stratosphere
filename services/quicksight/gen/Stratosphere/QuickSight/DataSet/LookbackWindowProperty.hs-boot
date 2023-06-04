module Stratosphere.QuickSight.DataSet.LookbackWindowProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LookbackWindowProperty :: Prelude.Type
instance ToResourceProperties LookbackWindowProperty
instance JSON.ToJSON LookbackWindowProperty