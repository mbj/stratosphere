module Stratosphere.Lightsail.Instance.MonthlyTransferProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MonthlyTransferProperty :: Prelude.Type
instance ToResourceProperties MonthlyTransferProperty
instance JSON.ToJSON MonthlyTransferProperty