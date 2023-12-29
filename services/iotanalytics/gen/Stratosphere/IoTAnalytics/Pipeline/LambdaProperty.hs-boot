module Stratosphere.IoTAnalytics.Pipeline.LambdaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LambdaProperty :: Prelude.Type
instance ToResourceProperties LambdaProperty
instance Prelude.Eq LambdaProperty
instance Prelude.Show LambdaProperty
instance JSON.ToJSON LambdaProperty