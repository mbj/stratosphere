module Stratosphere.QuickSight.DataSet.InputColumnProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputColumnProperty :: Prelude.Type
instance ToResourceProperties InputColumnProperty
instance JSON.ToJSON InputColumnProperty